
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elfhdr {int dummy; } ;
struct elf_phdr {scalar_t__ p_type; int p_memsz; int p_filesz; int p_paddr; int p_offset; } ;
struct TYPE_2__ {int cpu_notes_buf_size; int cpu_notes_buf; } ;


 scalar_t__ PT_NOTE ;
 TYPE_1__ fw_dump ;

__attribute__((used)) static void fadump_update_elfcore_header(char *bufp)
{
 struct elfhdr *elf;
 struct elf_phdr *phdr;

 elf = (struct elfhdr *)bufp;
 bufp += sizeof(struct elfhdr);


 phdr = (struct elf_phdr *)bufp;

 if (phdr->p_type == PT_NOTE) {
  phdr->p_paddr = fw_dump.cpu_notes_buf;
  phdr->p_offset = phdr->p_paddr;
  phdr->p_filesz = fw_dump.cpu_notes_buf_size;
  phdr->p_memsz = fw_dump.cpu_notes_buf_size;
 }
 return;
}
