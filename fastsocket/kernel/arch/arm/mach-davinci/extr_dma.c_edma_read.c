
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __raw_readl (scalar_t__) ;
 scalar_t__* edmacc_regs_base ;

__attribute__((used)) static inline unsigned int edma_read(unsigned ctlr, int offset)
{
 return (unsigned int)__raw_readl(edmacc_regs_base[ctlr] + offset);
}
