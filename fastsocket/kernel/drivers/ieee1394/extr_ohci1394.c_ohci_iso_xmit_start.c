
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ti_ohci {int dummy; } ;
struct TYPE_2__ {int context; } ;
struct ohci_iso_xmit {int ContextControlSet; struct ti_ohci* ohci; TYPE_1__ task; int prog; int CommandPtr; int ContextControlClear; } ;
struct iso_xmit_cmd {int dummy; } ;
struct hpsb_iso {int pkt_dma; struct ohci_iso_xmit* hostdata; } ;


 int KERN_ERR ;
 int OHCI1394_IsoXmitIntMaskSet ;
 int OHCI1394_IsochronousCycleTimer ;
 int PRINT (int ,char*,int) ;
 int dma_prog_region_offset_to_bus (int *,int) ;
 int mb () ;
 int reg_read (struct ti_ohci*,int ) ;
 int reg_write (struct ti_ohci*,int ,int) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static int ohci_iso_xmit_start(struct hpsb_iso *iso, int cycle)
{
 struct ohci_iso_xmit *xmit = iso->hostdata;
 struct ti_ohci *ohci = xmit->ohci;


 reg_write(xmit->ohci, xmit->ContextControlClear, 0xFFFFFFFF);
 wmb();


 reg_write(xmit->ohci, xmit->CommandPtr,
    dma_prog_region_offset_to_bus(&xmit->prog, iso->pkt_dma * sizeof(struct iso_xmit_cmd)) | 3);


 if (cycle != -1) {
  u32 start = cycle & 0x1FFF;



  u32 seconds = reg_read(xmit->ohci, OHCI1394_IsochronousCycleTimer) >> 25;


  seconds += 1;

  start |= (seconds & 3) << 13;

  reg_write(xmit->ohci, xmit->ContextControlSet, 0x80000000 | (start << 16));
 }


 reg_write(xmit->ohci, OHCI1394_IsoXmitIntMaskSet, 1 << xmit->task.context);


 reg_write(xmit->ohci, xmit->ContextControlSet, 0x8000);
 mb();


 udelay(100);


 if (!(reg_read(xmit->ohci, xmit->ContextControlSet) & 0x8000)) {
  PRINT(KERN_ERR, "Error starting IT DMA (ContextControl 0x%08x)\n",
        reg_read(xmit->ohci, xmit->ContextControlSet));
  return -1;
 }

 return 0;
}
