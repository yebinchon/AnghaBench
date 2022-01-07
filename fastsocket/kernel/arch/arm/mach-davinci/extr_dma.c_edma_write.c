
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raw_writel (int,scalar_t__) ;
 scalar_t__* edmacc_regs_base ;

__attribute__((used)) static inline void edma_write(unsigned ctlr, int offset, int val)
{
 __raw_writel(val, edmacc_regs_base[ctlr] + offset);
}
