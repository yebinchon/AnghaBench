
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ioaddr; } ;


 int BCL ;
 int CCTR ;
 int CSTR ;
 int DBA ;
 int DMAC_CCTRx_ACT ;
 int PIX ;
 int SBA ;
 int SIX ;
 int ___set_DMAC (unsigned long,int ,unsigned long) ;
 int __get_DMAC (unsigned long,int ) ;
 int __set_DMAC (unsigned long,int ,int) ;
 TYPE_1__* frv_dma_channels ;
 int frv_set_dma_inprogress (int) ;
 int mb () ;

void frv_dma_start(int dma,
     unsigned long sba, unsigned long dba,
     unsigned long pix, unsigned long six, unsigned long bcl)
{
 unsigned long ioaddr = frv_dma_channels[dma].ioaddr;

 ___set_DMAC(ioaddr, SBA, sba);
 ___set_DMAC(ioaddr, DBA, dba);
 ___set_DMAC(ioaddr, PIX, pix);
 ___set_DMAC(ioaddr, SIX, six);
 ___set_DMAC(ioaddr, BCL, bcl);
 ___set_DMAC(ioaddr, CSTR, 0);
 mb();

 __set_DMAC(ioaddr, CCTR, __get_DMAC(ioaddr, CCTR) | DMAC_CCTRx_ACT);
 frv_set_dma_inprogress(dma);

}
