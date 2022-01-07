
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RdDCSR; int DBSB; int DBSA; } ;
typedef TYPE_1__ dma_regs_t ;
typedef int dma_addr_t ;


 int DCSR_BIU ;
 int DCSR_STRTA ;
 int DCSR_STRTB ;

dma_addr_t sa1100_get_dma_pos(dma_regs_t *regs)
{
 int status;
 status = regs->RdDCSR;
 if ((!(status & DCSR_BIU) && (status & DCSR_STRTA)) ||
     ( (status & DCSR_BIU) && !(status & DCSR_STRTB)))
  return regs->DBSA;
 else
  return regs->DBSB;
}
