
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int dummy; } ;
struct cx8802_dev {struct cx88_core* core; } ;


 int MO_PCI_INTMSK ;
 int MO_TS_DMACNTRL ;
 int MO_TS_INTMSK ;
 int PCI_INT_TSINT ;
 int TS_GEN_CNTRL ;
 int cx_clear (int ,int) ;
 int cx_write (int ,int) ;
 int dprintk (int,char*) ;

__attribute__((used)) static int cx8802_stop_dma(struct cx8802_dev *dev)
{
 struct cx88_core *core = dev->core;
 dprintk( 1, "cx8802_stop_dma\n" );


 cx_clear(MO_TS_DMACNTRL, 0x11);


 cx_clear(MO_PCI_INTMSK, PCI_INT_TSINT);
 cx_clear(MO_TS_INTMSK, 0x1f0011);


 cx_write(TS_GEN_CNTRL, 0xcd);
 return 0;
}
