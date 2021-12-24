-- load_sh_tables.sql

/* You will need to swap in your table names, region name, tenant name, bucket name, and file names */

BEGIN
  DBMS_CLOUD.copy_data(
    table_name =>'CHANNELS',
    credential_name =>:credential_name,
    file_uri_list =>:object_store_url||'chan_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true')
 );
END;
/

BEGIN
  DBMS_CLOUD.copy_data(
    table_name =>'COUNTRIES',
    credential_name =>:credential_name,
    file_uri_list =>:object_store_url||'coun_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true')
 );
END;
/

BEGIN
  DBMS_CLOUD.copy_data(
    table_name =>'CUSTOMERS',
    credential_name =>:credential_name,
    file_uri_list =>:object_store_url||'cust1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS')
 );
END;
/

BEGIN
  DBMS_CLOUD.copy_data(
    table_name =>'SUPPLEMENTARY_DEMOGRAPHICS',
    credential_name =>:credential_name,
    file_uri_list =>:object_store_url||'dem1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true')
 );
END;
/

BEGIN
  DBMS_CLOUD.copy_data(
    table_name =>'SALES',
    credential_name =>:credential_name,
    file_uri_list =>:object_store_url||'dmsal_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD')
 );
END;
/

BEGIN
  DBMS_CLOUD.copy_data(
    table_name =>'PRODUCTS',
    credential_name =>:credential_name,
    file_uri_list =>:object_store_url||'prod1v3.dat',
    format => json_object('delimiter' value '|', 'quote' value '^', 'ignoremissingcolumns' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS', 'blankasnull' value 'true')
 );
END;
/

BEGIN
  DBMS_CLOUD.copy_data(
    table_name =>'PROMOTIONS',
    credential_name =>:credential_name,
    file_uri_list =>:object_store_url||'prom1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS', 'blankasnull' value 'true')
 );
END;
/

BEGIN
  DBMS_CLOUD.copy_data(
    table_name =>'SALES',
    credential_name =>:credential_name,
    file_uri_list =>:object_store_url||'sale1v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD', 'blankasnull' value 'true')
 );
END;
/

BEGIN
  DBMS_CLOUD.copy_data(
    table_name =>'TIMES',
    credential_name =>:credential_name,
    file_uri_list =>:object_store_url||'time_v3.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'removequotes' value 'true', 'dateformat' value 'YYYY-MM-DD-HH24-MI-SS', 'blankasnull' value 'true')
 );
END;
/

	
BEGIN
  DBMS_CLOUD.copy_data(
    table_name =>'COSTS',
    credential_name =>:credential_name,
    file_uri_list =>:object_store_url||'costs.dat',
    format => json_object('ignoremissingcolumns' value 'true', 'dateformat' value 'YYYY-MM-DD', 'blankasnull' value 'true')
 );
END;
/
