
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * syminfo; } ;
struct module {TYPE_1__ arch; } ;
typedef int Elf_Shdr ;
typedef int Elf_Ehdr ;


 int module_bug_finalize (int const*,int const*,struct module*) ;
 int vfree (int *) ;

int module_finalize(const Elf_Ehdr *hdr, const Elf_Shdr *sechdrs,
      struct module *module)
{
 vfree(module->arch.syminfo);
 module->arch.syminfo = ((void*)0);

 return module_bug_finalize(hdr, sechdrs, module);
}
