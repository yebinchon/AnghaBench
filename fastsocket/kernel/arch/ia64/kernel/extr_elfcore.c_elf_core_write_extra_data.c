
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct elf_phdr {scalar_t__ p_type; int p_memsz; scalar_t__ p_vaddr; } ;
struct TYPE_2__ {int e_phnum; scalar_t__ e_phoff; } ;


 scalar_t__ GATE_ADDR ;
 TYPE_1__* GATE_EHDR ;
 size_t PAGE_ALIGN (int ) ;
 scalar_t__ PT_LOAD ;
 int dump_write (struct file*,void*,size_t) ;

int elf_core_write_extra_data(struct file *file, size_t *size,
         unsigned long limit)
{
 const struct elf_phdr *const gate_phdrs =
  (const struct elf_phdr *) (GATE_ADDR + GATE_EHDR->e_phoff);
 int i;

 for (i = 0; i < GATE_EHDR->e_phnum; ++i) {
  if (gate_phdrs[i].p_type == PT_LOAD) {
   void *addr = (void *)gate_phdrs[i].p_vaddr;
   size_t memsz = PAGE_ALIGN(gate_phdrs[i].p_memsz);

   *size += memsz;
   if (*size > limit || !dump_write(file, addr, memsz))
    return 0;
   break;
  }
 }
 return 1;
}
