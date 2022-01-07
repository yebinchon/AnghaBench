
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_phdr {scalar_t__ p_type; int p_memsz; } ;
struct TYPE_2__ {int e_phnum; scalar_t__ e_phoff; } ;


 scalar_t__ GATE_ADDR ;
 TYPE_1__* GATE_EHDR ;
 scalar_t__ PAGE_ALIGN (int ) ;
 scalar_t__ PT_LOAD ;

size_t elf_core_extra_data_size(void)
{
 const struct elf_phdr *const gate_phdrs =
  (const struct elf_phdr *) (GATE_ADDR + GATE_EHDR->e_phoff);
 int i;
 size_t size = 0;

 for (i = 0; i < GATE_EHDR->e_phnum; ++i) {
  if (gate_phdrs[i].p_type == PT_LOAD) {
   size += PAGE_ALIGN(gate_phdrs[i].p_memsz);
   break;
  }
 }
 return size;
}
