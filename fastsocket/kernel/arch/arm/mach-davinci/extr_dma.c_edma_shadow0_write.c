
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EDMA_SHADOW0 ;
 int edma_write (unsigned int,scalar_t__,unsigned int) ;

__attribute__((used)) static inline void edma_shadow0_write(unsigned ctlr, int offset, unsigned val)
{
 edma_write(ctlr, EDMA_SHADOW0 + offset, val);
}
