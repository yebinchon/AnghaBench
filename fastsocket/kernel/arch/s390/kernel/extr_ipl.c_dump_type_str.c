
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dump_type { ____Placeholder_dump_type } dump_type ;


 char* DUMP_CCW_STR ;
 char* DUMP_FCP_STR ;
 char* DUMP_NONE_STR ;




__attribute__((used)) static char *dump_type_str(enum dump_type type)
{
 switch (type) {
 case 128:
  return DUMP_NONE_STR;
 case 130:
  return DUMP_CCW_STR;
 case 129:
  return DUMP_FCP_STR;
 default:
  return ((void*)0);
 }
}
