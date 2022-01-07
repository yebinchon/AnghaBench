
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct elf_phdr {scalar_t__ p_type; scalar_t__ p_paddr; scalar_t__ p_offset; scalar_t__ p_filesz; scalar_t__ p_memsz; } ;
typedef int phdr ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int e_phnum; scalar_t__ e_phoff; } ;
typedef scalar_t__ Elf64_Off ;


 scalar_t__ GATE_ADDR ;
 TYPE_1__* GATE_EHDR ;
 scalar_t__ PAGE_ALIGN (scalar_t__) ;
 scalar_t__ PT_LOAD ;
 int dump_write (struct file*,struct elf_phdr*,int) ;

int elf_core_write_extra_phdrs(struct file *file, loff_t offset, size_t *size,
          unsigned long limit)
{
 const struct elf_phdr *const gate_phdrs =
  (const struct elf_phdr *) (GATE_ADDR + GATE_EHDR->e_phoff);
 int i;
 Elf64_Off ofs = 0;

 for (i = 0; i < GATE_EHDR->e_phnum; ++i) {
  struct elf_phdr phdr = gate_phdrs[i];

  if (phdr.p_type == PT_LOAD) {
   phdr.p_memsz = PAGE_ALIGN(phdr.p_memsz);
   phdr.p_filesz = phdr.p_memsz;
   if (ofs == 0) {
    ofs = phdr.p_offset = offset;
    offset += phdr.p_filesz;
   } else {
    phdr.p_offset = ofs;
   }
  } else {
   phdr.p_offset += ofs;
  }
  phdr.p_paddr = 0;
  *size += sizeof(phdr);
  if (*size > limit || !dump_write(file, &phdr, sizeof(phdr)))
   return 0;
 }
 return 1;
}
