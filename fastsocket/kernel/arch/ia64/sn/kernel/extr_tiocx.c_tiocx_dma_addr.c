
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PHYS_TO_TIODMA (int ) ;

u64 tiocx_dma_addr(u64 addr)
{
 return PHYS_TO_TIODMA(addr);
}
