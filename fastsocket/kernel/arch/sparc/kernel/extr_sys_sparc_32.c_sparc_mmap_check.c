
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARCH_SUN4C ;
 int EINVAL ;
 unsigned long PAGE_SIZE ;
 unsigned long TASK_SIZE ;

int sparc_mmap_check(unsigned long addr, unsigned long len)
{
 if (ARCH_SUN4C &&
     (len > 0x20000000 ||
      (addr < 0xe0000000 && addr + len > 0x20000000)))
  return -EINVAL;


 if (len > TASK_SIZE - PAGE_SIZE || addr + len > TASK_SIZE - PAGE_SIZE)
  return -EINVAL;

 return 0;
}
