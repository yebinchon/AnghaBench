
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fip_conn_type { ____Placeholder_fip_conn_type } fip_conn_type ;


 int ARRAY_SIZE (int *) ;
 int FIP_CONN_TYPE_UNKNOWN ;
 int * fip_conn_type_names ;
 scalar_t__ strcasecmp (char const*,int ) ;

__attribute__((used)) static enum fip_conn_type fcoe_parse_mode(const char *buf)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(fip_conn_type_names); i++) {
  if (strcasecmp(buf, fip_conn_type_names[i]) == 0)
   return i;
 }

 return FIP_CONN_TYPE_UNKNOWN;
}
