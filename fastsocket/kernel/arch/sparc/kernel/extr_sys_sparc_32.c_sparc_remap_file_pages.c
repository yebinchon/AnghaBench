
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;
 long sys_remap_file_pages (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

long sparc_remap_file_pages(unsigned long start, unsigned long size,
      unsigned long prot, unsigned long pgoff,
      unsigned long flags)
{



 return sys_remap_file_pages(start, size, prot,
        (pgoff >> (PAGE_SHIFT - 12)), flags);
}
