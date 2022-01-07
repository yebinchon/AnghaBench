
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_baddr (unsigned long) ;

void dvma_unmap(void *baddr)
{
 unsigned long addr;

 addr = (unsigned long)baddr;

 if(!(addr & 0x00f00000))
  addr |= 0xf00000;

 free_baddr(addr);

 return;

}
