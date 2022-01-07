
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VIRT_OFFSET ;

void *__ioremap(unsigned long physaddr, unsigned long size, int cacheflag)
{
 return (void *)(physaddr + VIRT_OFFSET);
}
