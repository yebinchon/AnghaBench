
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
typedef int Elf_Shdr ;
typedef int Elf_Ehdr ;



int module_frob_arch_sections(Elf_Ehdr *hdr,
    Elf_Shdr *sechdrs,
    char *secstrings,
    struct module *mod)
{
 return 0;
}
