
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* p_align; void* p_flags; void* p_memsz; void* p_filesz; void* p_paddr; void* p_vaddr; void* p_offset; void* p_type; } ;
typedef TYPE_1__ Elf32_Phdr ;


 void* swab32 (void*) ;

__attribute__((used)) static void convert_elf_phdrs(Elf32_Phdr * p, int num)
{
 int i;

 for (i = 0; i < num; i++, p++) {
  p->p_type = swab32(p->p_type);
  p->p_offset = swab32(p->p_offset);
  p->p_vaddr = swab32(p->p_vaddr);
  p->p_paddr = swab32(p->p_paddr);
  p->p_filesz = swab32(p->p_filesz);
  p->p_memsz = swab32(p->p_memsz);
  p->p_flags = swab32(p->p_flags);
  p->p_align = swab32(p->p_align);
 }

}
