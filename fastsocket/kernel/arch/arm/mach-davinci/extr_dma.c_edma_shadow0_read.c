
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EDMA_SHADOW0 ;
 unsigned int edma_read (unsigned int,scalar_t__) ;

__attribute__((used)) static inline unsigned int edma_shadow0_read(unsigned ctlr, int offset)
{
 return edma_read(ctlr, EDMA_SHADOW0 + offset);
}
