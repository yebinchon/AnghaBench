
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct elf_phdr {unsigned long p_vaddr; scalar_t__ p_offset; scalar_t__ p_filesz; } ;


 unsigned long IA32_PAGE_MASK ;
 unsigned long ia32_do_mmap (struct file*,unsigned long,scalar_t__,int,int,scalar_t__) ;

__attribute__((used)) static unsigned long
elf32_map(struct file *filep, unsigned long addr, struct elf_phdr *eppnt,
  int prot, int type, unsigned long unused)
{
 unsigned long pgoff = (eppnt->p_vaddr) & ~IA32_PAGE_MASK;

 return ia32_do_mmap(filep, (addr & IA32_PAGE_MASK), eppnt->p_filesz + pgoff, prot, type,
       eppnt->p_offset - pgoff);
}
