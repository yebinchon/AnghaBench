
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ppc64_stub_entry {int dummy; } ;
struct TYPE_6__ {unsigned int e_shnum; } ;
struct TYPE_5__ {scalar_t__ sh_type; int sh_size; scalar_t__ sh_addr; } ;
typedef TYPE_1__ Elf64_Shdr ;
typedef int Elf64_Rela ;
typedef TYPE_2__ Elf64_Ehdr ;


 int DEBUGP (char*,unsigned long,...) ;
 scalar_t__ SHT_RELA ;
 scalar_t__ count_relocs (void*,int) ;
 int relacmp ;
 int relaswap ;
 int sort (void*,int,int,int ,int ) ;

__attribute__((used)) static unsigned long get_stubs_size(const Elf64_Ehdr *hdr,
        const Elf64_Shdr *sechdrs)
{

 unsigned long relocs = 1;
 unsigned i;


 for (i = 1; i < hdr->e_shnum; i++) {
  if (sechdrs[i].sh_type == SHT_RELA) {
   DEBUGP("Found relocations in section %u\n", i);
   DEBUGP("Ptr: %p.  Number: %lu\n",
          (void *)sechdrs[i].sh_addr,
          sechdrs[i].sh_size / sizeof(Elf64_Rela));






   sort((void *)sechdrs[i].sh_addr,
        sechdrs[i].sh_size / sizeof(Elf64_Rela),
        sizeof(Elf64_Rela), relacmp, relaswap);

   relocs += count_relocs((void *)sechdrs[i].sh_addr,
            sechdrs[i].sh_size
            / sizeof(Elf64_Rela));
  }
 }






 DEBUGP("Looks like a total of %lu stubs, max\n", relocs);
 return relocs * sizeof(struct ppc64_stub_entry);
}
