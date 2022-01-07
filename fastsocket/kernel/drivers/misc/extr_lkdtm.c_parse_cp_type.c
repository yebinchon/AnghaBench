
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ctype { ____Placeholder_ctype } ctype ;


 int ARRAY_SIZE (int *) ;
 int CT_NONE ;
 int * cp_type ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static enum ctype parse_cp_type(const char *what, size_t count)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(cp_type); i++) {
  if (!strcmp(what, cp_type[i]))
   return i + 1;
 }

 return CT_NONE;
}
