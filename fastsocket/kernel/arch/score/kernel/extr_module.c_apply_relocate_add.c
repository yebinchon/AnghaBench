
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
typedef int Elf_Shdr ;



int apply_relocate_add(Elf_Shdr *sechdrs, const char *strtab,
  unsigned int symindex, unsigned int relsec,
  struct module *me)
{
 return 0;
}
