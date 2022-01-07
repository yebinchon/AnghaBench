
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int edma_read (unsigned int,int) ;

__attribute__((used)) static inline unsigned int edma_read_array(unsigned ctlr, int offset, int i)
{
 return edma_read(ctlr, offset + (i << 2));
}
