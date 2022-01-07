
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EDMA_PARM ;
 int edma_write (unsigned int,scalar_t__,unsigned int) ;

__attribute__((used)) static inline void edma_parm_write(unsigned ctlr, int offset, int param_no,
  unsigned val)
{
 edma_write(ctlr, EDMA_PARM + offset + (param_no << 5), val);
}
