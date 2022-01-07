
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * safe_abs_relocs ;
 int strcmp (char const*,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int is_safe_abs_reloc(const char* sym_name)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(safe_abs_relocs); i++) {
  if (!strcmp(sym_name, safe_abs_relocs[i]))

   return 1;
 }
 if (strncmp(sym_name, "VDSO", 4) == 0)
  return 1;
 if (strncmp(sym_name, "__crc_", 6) == 0)
  return 1;
 return 0;
}
