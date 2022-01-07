
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ctype { ____Placeholder_ctype } ctype ;


 int ARRAY_SIZE (char const**) ;
 int CT_NONE ;
 char const** cp_type ;

__attribute__((used)) static const char *cp_type_to_str(enum ctype type)
{
 if (type == CT_NONE || type < 0 || type > ARRAY_SIZE(cp_type))
  return "None";

 return cp_type[type - 1];
}
