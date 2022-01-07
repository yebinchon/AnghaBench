
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ioaddr; } ;


 int BCL ;
 int CSTR ;
 int PIX ;
 int SIX ;
 unsigned long __get_DMAC (unsigned long,int ) ;
 TYPE_1__* frv_dma_channels ;
 int printk (char*,int,unsigned long,unsigned long,unsigned long,unsigned long) ;

void frv_dma_dump(int dma)
{
 unsigned long ioaddr = frv_dma_channels[dma].ioaddr;
 unsigned long cstr, pix, six, bcl;

 cstr = __get_DMAC(ioaddr, CSTR);
 pix = __get_DMAC(ioaddr, PIX);
 six = __get_DMAC(ioaddr, SIX);
 bcl = __get_DMAC(ioaddr, BCL);

 printk("DMA[%d] cstr=%lx pix=%lx six=%lx bcl=%lx\n", dma, cstr, pix, six, bcl);

}
