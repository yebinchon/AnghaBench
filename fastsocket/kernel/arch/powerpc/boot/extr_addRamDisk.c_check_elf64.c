
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct addr_range {unsigned long memsize; unsigned long offset; unsigned long long addr; } ;
struct TYPE_4__ {scalar_t__* e_ident; scalar_t__ e_type; scalar_t__ e_machine; int e_phoff; } ;
struct TYPE_3__ {unsigned long p_memsz; unsigned long p_offset; unsigned long p_vaddr; unsigned long p_type; unsigned long p_flags; unsigned long p_paddr; unsigned long p_filesz; unsigned long p_align; } ;
typedef TYPE_1__ Elf64_Phdr ;
typedef TYPE_2__ Elf64_Ehdr ;


 size_t EI_CLASS ;
 size_t EI_DATA ;
 size_t EI_MAG0 ;
 size_t EI_MAG1 ;
 size_t EI_MAG2 ;
 size_t EI_MAG3 ;
 scalar_t__ ELFCLASS64 ;
 scalar_t__ ELFDATA2MSB ;
 scalar_t__ ELFMAG0 ;
 scalar_t__ ELFMAG1 ;
 scalar_t__ ELFMAG2 ;
 scalar_t__ ELFMAG3 ;
 scalar_t__ EM_PPC64 ;
 scalar_t__ ET_EXEC ;
 int printf (char*,...) ;

__attribute__((used)) static int check_elf64(void *p, int size, struct addr_range *r)
{
 Elf64_Ehdr *elf64 = p;
 Elf64_Phdr *elf64ph;

 if (elf64->e_ident[EI_MAG0] != ELFMAG0 ||
     elf64->e_ident[EI_MAG1] != ELFMAG1 ||
     elf64->e_ident[EI_MAG2] != ELFMAG2 ||
     elf64->e_ident[EI_MAG3] != ELFMAG3 ||
     elf64->e_ident[EI_CLASS] != ELFCLASS64 ||
     elf64->e_ident[EI_DATA] != ELFDATA2MSB ||
     elf64->e_type != ET_EXEC || elf64->e_machine != EM_PPC64)
  return 0;

 if ((elf64->e_phoff + sizeof(Elf64_Phdr)) > size)
  return 0;

 elf64ph = (Elf64_Phdr *) ((unsigned long)elf64 +
      (unsigned long)elf64->e_phoff);

 r->memsize = (unsigned long)elf64ph->p_memsz;
 r->offset = (unsigned long)elf64ph->p_offset;
 r->addr = (unsigned long long)elf64ph->p_vaddr;
 return 64;
}
