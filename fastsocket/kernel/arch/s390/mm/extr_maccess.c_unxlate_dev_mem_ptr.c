
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_page (unsigned long) ;

void unxlate_dev_mem_ptr(unsigned long addr, void *buf)
{
 if ((void *) addr != buf)
  free_page((unsigned long) buf);
}
