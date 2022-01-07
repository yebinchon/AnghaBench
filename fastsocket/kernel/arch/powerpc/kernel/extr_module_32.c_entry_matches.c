
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_plt_entry {int* jump; } ;
typedef int Elf32_Addr ;



__attribute__((used)) static inline int entry_matches(struct ppc_plt_entry *entry, Elf32_Addr val)
{
 if (entry->jump[0] == 0x3d600000 + ((val + 0x8000) >> 16)
     && entry->jump[1] == 0x396b0000 + (val & 0xffff))
  return 1;
 return 0;
}
