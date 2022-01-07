
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ipl_type { ____Placeholder_ipl_type } ipl_type ;


 char* IPL_CCW_STR ;
 char* IPL_FCP_DUMP_STR ;
 char* IPL_FCP_STR ;
 char* IPL_NSS_STR ;





 char* IPL_UNKNOWN_STR ;

__attribute__((used)) static char *ipl_type_str(enum ipl_type type)
{
 switch (type) {
 case 132:
  return IPL_CCW_STR;
 case 131:
  return IPL_FCP_STR;
 case 130:
  return IPL_FCP_DUMP_STR;
 case 129:
  return IPL_NSS_STR;
 case 128:
 default:
  return IPL_UNKNOWN_STR;
 }
}
