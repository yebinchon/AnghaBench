
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ioaddr; } ;


 int CCTR ;
 int CSTR ;
 unsigned long DMAC_CCTRx_ACT ;
 unsigned long DMAC_CSTRx_CE ;
 int SIX ;
 int ___set_DMAC (unsigned long,int ,unsigned long) ;
 unsigned long __get_DMAC (unsigned long,int ) ;
 int __set_DMAC (unsigned long,int ,unsigned long) ;
 TYPE_1__* frv_dma_channels ;
 int frv_set_dma_inprogress (int) ;
 int mb () ;

void frv_dma_restart_circular(int dma, unsigned long six)
{
 unsigned long ioaddr = frv_dma_channels[dma].ioaddr;

 ___set_DMAC(ioaddr, SIX, six);
 ___set_DMAC(ioaddr, CSTR, __get_DMAC(ioaddr, CSTR) & ~DMAC_CSTRx_CE);
 mb();

 __set_DMAC(ioaddr, CCTR, __get_DMAC(ioaddr, CCTR) | DMAC_CCTRx_ACT);
 frv_set_dma_inprogress(dma);

}
