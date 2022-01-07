
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebus_dma_info {scalar_t__ regs; } ;


 scalar_t__ EBDMA_COUNT ;
 unsigned int readl (scalar_t__) ;

unsigned int ebus_dma_residue(struct ebus_dma_info *p)
{
 return readl(p->regs + EBDMA_COUNT);
}
