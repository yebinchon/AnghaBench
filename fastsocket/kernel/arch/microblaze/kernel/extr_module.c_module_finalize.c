
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
typedef int Elf_Shdr ;
typedef int Elf32_Ehdr ;



int module_finalize(const Elf32_Ehdr *hdr, const Elf_Shdr *sechdrs,
  struct module *module)
{
 return 0;
}
