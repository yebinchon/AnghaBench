
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ppc_plt_entry {int* jump; } ;
struct TYPE_4__ {size_t core_plt_section; size_t init_plt_section; } ;
struct module {void* module_core; int core_size; TYPE_1__ arch; } ;
struct TYPE_5__ {scalar_t__ sh_addr; } ;
typedef TYPE_2__ Elf32_Shdr ;
typedef int Elf32_Addr ;


 int DEBUGP (char*,int,...) ;
 scalar_t__ entry_matches (struct ppc_plt_entry*,int) ;

__attribute__((used)) static uint32_t do_plt_call(void *location,
       Elf32_Addr val,
       Elf32_Shdr *sechdrs,
       struct module *mod)
{
 struct ppc_plt_entry *entry;

 DEBUGP("Doing plt for call to 0x%x at 0x%x\n", val, (unsigned int)location);

 if (location >= mod->module_core
     && location < mod->module_core + mod->core_size)
  entry = (void *)sechdrs[mod->arch.core_plt_section].sh_addr;
 else
  entry = (void *)sechdrs[mod->arch.init_plt_section].sh_addr;


 while (entry->jump[0]) {
  if (entry_matches(entry, val)) return (uint32_t)entry;
  entry++;
 }


 entry->jump[0] = 0x3d600000+((val+0x8000)>>16);
 entry->jump[1] = 0x396b0000 + (val&0xffff);
 entry->jump[2] = 0x7d6903a6;
 entry->jump[3] = 0x4e800420;

 DEBUGP("Initialized plt for 0x%x at %p\n", val, entry);
 return (uint32_t)entry;
}
