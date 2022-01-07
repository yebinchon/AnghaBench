
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_8__ {int cpu_features; int mmu_features; } ;
struct TYPE_7__ {int sh_size; scalar_t__ sh_addr; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef int Elf_Ehdr ;


 TYPE_6__* cur_cpu_spec ;
 int do_feature_fixups (int ,void*,void*) ;
 int do_lwsync_fixups (int ,void*,void*) ;
 TYPE_1__* find_section (int const*,TYPE_1__ const*,char*) ;
 int module_bug_finalize (int const*,TYPE_1__ const*,struct module*) ;
 int powerpc_firmware_features ;

int module_finalize(const Elf_Ehdr *hdr,
  const Elf_Shdr *sechdrs, struct module *me)
{
 const Elf_Shdr *sect;
 int err;

 err = module_bug_finalize(hdr, sechdrs, me);
 if (err)
  return err;


 sect = find_section(hdr, sechdrs, "__ftr_fixup");
 if (sect != ((void*)0))
  do_feature_fixups(cur_cpu_spec->cpu_features,
      (void *)sect->sh_addr,
      (void *)sect->sh_addr + sect->sh_size);

 sect = find_section(hdr, sechdrs, "__mmu_ftr_fixup");
 if (sect != ((void*)0))
  do_feature_fixups(cur_cpu_spec->mmu_features,
      (void *)sect->sh_addr,
      (void *)sect->sh_addr + sect->sh_size);
 sect = find_section(hdr, sechdrs, "__lwsync_fixup");
 if (sect != ((void*)0))
  do_lwsync_fixups(cur_cpu_spec->cpu_features,
     (void *)sect->sh_addr,
     (void *)sect->sh_addr + sect->sh_size);

 return 0;
}
