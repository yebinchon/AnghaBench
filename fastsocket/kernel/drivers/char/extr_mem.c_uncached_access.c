
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; } ;


 int EFI_MEMORY_WB ;
 int O_SYNC ;
 unsigned long __pa (int ) ;
 int efi_mem_attributes (unsigned long) ;
 int high_memory ;

__attribute__((used)) static inline int uncached_access(struct file *file, unsigned long addr)
{
 if (file->f_flags & O_SYNC)
  return 1;
 return addr >= __pa(high_memory);

}
