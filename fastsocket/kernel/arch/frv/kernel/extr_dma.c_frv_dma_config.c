
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ioaddr; } ;


 int APR ;
 int CCFR ;
 int CCTR ;
 int ___set_DMAC (unsigned long,int ,unsigned long) ;
 TYPE_1__* frv_dma_channels ;
 int mb () ;

void frv_dma_config(int dma, unsigned long ccfr, unsigned long cctr, unsigned long apr)
{
 unsigned long ioaddr = frv_dma_channels[dma].ioaddr;

 ___set_DMAC(ioaddr, CCFR, ccfr);
 ___set_DMAC(ioaddr, CCTR, cctr);
 ___set_DMAC(ioaddr, APR, apr);
 mb();

}
