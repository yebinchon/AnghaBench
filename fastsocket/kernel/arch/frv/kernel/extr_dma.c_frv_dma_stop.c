
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {unsigned long ioaddr; } ;


 int BCL ;
 int CCTR ;
 int CSTR ;
 int DMAC_CCTRx_ACT ;
 int DMAC_CCTRx_FC ;
 int DMAC_CCTRx_IE ;
 int ___set_DMAC (unsigned long,int ,int ) ;
 int __get_DMAC (unsigned long,int ) ;
 int __set_DMAC (unsigned long,int ,int) ;
 int frv_clear_dma_inprogress (int) ;
 TYPE_1__* frv_dma_channels ;

void frv_dma_stop(int dma)
{
 unsigned long ioaddr = frv_dma_channels[dma].ioaddr;
 uint32_t cctr;

 ___set_DMAC(ioaddr, CSTR, 0);
 cctr = __get_DMAC(ioaddr, CCTR);
 cctr &= ~(DMAC_CCTRx_IE | DMAC_CCTRx_ACT);
 cctr |= DMAC_CCTRx_FC;
 __set_DMAC(ioaddr, CCTR, cctr);
 __set_DMAC(ioaddr, BCL, 0);
 frv_clear_dma_inprogress(dma);
}
