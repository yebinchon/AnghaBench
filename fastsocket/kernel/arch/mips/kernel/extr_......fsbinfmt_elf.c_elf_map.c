
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct elf_phdr {unsigned long p_filesz; unsigned long p_offset; int p_vaddr; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 int BAD_ADDR (unsigned long) ;
 unsigned long ELF_PAGEALIGN (unsigned long) ;
 unsigned long ELF_PAGEOFFSET (int ) ;
 unsigned long ELF_PAGESTART (unsigned long) ;
 TYPE_2__* current ;
 unsigned long do_mmap (struct file*,unsigned long,unsigned long,int,int,unsigned long) ;
 int do_munmap (TYPE_1__*,unsigned long,unsigned long) ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static unsigned long elf_map(struct file *filep, unsigned long addr,
  struct elf_phdr *eppnt, int prot, int type,
  unsigned long total_size)
{
 unsigned long map_addr;
 unsigned long size = eppnt->p_filesz + ELF_PAGEOFFSET(eppnt->p_vaddr);
 unsigned long off = eppnt->p_offset - ELF_PAGEOFFSET(eppnt->p_vaddr);
 addr = ELF_PAGESTART(addr);
 size = ELF_PAGEALIGN(size);



 if (!size)
  return addr;

 down_write(&current->mm->mmap_sem);
 if (total_size) {
  total_size = ELF_PAGEALIGN(total_size);
  map_addr = do_mmap(filep, addr, total_size, prot, type, off);
  if (!BAD_ADDR(map_addr))
   do_munmap(current->mm, map_addr+size, total_size-size);
 } else
  map_addr = do_mmap(filep, addr, size, prot, type, off);

 up_write(&current->mm->mmap_sem);
 return(map_addr);
}
