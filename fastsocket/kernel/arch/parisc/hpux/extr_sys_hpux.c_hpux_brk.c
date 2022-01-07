
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_SIZE ;
 unsigned long sys_brk (scalar_t__) ;

unsigned long hpux_brk(unsigned long addr)
{

 return sys_brk(addr + PAGE_SIZE);
}
