
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cx88_dmaqueue {int count; } ;
struct cx88_core {int pci_irqmask; } ;
struct TYPE_4__ {int dma; } ;
struct TYPE_3__ {int width; } ;
struct cx88_buffer {TYPE_2__ risc; TYPE_1__ vb; } ;
struct cx8800_dev {struct cx88_core* core; } ;


 int GP_COUNT_CONTROL_RESET ;
 int MO_DEV_CNTRL2 ;
 int MO_PCI_INTMSK ;
 int MO_VBI_GPCNTRL ;
 int MO_VBOS_CONTROL ;
 int MO_VID_DMACNTRL ;
 int MO_VID_INTMSK ;
 int PCI_INT_VIDINT ;
 size_t SRAM_CH24 ;
 int VID_CAPTURE_CONTROL ;
 int cx88_sram_channel_setup (struct cx88_core*,int *,int ,int ) ;
 int * cx88_sram_channels ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;

__attribute__((used)) static int cx8800_start_vbi_dma(struct cx8800_dev *dev,
    struct cx88_dmaqueue *q,
    struct cx88_buffer *buf)
{
 struct cx88_core *core = dev->core;


 cx88_sram_channel_setup(dev->core, &cx88_sram_channels[SRAM_CH24],
    buf->vb.width, buf->risc.dma);

 cx_write(MO_VBOS_CONTROL, ( (1 << 18) |
        (1 << 15) |
        (1 << 11) ));


 cx_write(MO_VBI_GPCNTRL, GP_COUNT_CONTROL_RESET);
 q->count = 1;


 cx_set(MO_PCI_INTMSK, core->pci_irqmask | PCI_INT_VIDINT);
 cx_set(MO_VID_INTMSK, 0x0f0088);


 cx_set(VID_CAPTURE_CONTROL,0x18);


 cx_set(MO_DEV_CNTRL2, (1<<5));
 cx_set(MO_VID_DMACNTRL, 0x88);

 return 0;
}
