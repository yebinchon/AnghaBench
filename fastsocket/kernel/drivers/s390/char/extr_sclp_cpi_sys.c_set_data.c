
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPI_LENGTH_NAME ;
 int memcpy (char*,char*,int ) ;
 int memset (char*,char,int ) ;
 int sclp_ascebc_str (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void set_data(char *field, char *data)
{
 memset(field, ' ', CPI_LENGTH_NAME);
 memcpy(field, data, strlen(data));
 sclp_ascebc_str(field, CPI_LENGTH_NAME);
}
