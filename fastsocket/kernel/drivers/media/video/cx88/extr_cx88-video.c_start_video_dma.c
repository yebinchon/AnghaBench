
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cx88_dmaqueue {int count; } ;
struct cx88_core {int pci_irqmask; } ;
struct TYPE_5__ {int field; int height; int width; } ;
struct TYPE_4__ {int dma; } ;
struct cx88_buffer {TYPE_3__* fmt; TYPE_2__ vb; TYPE_1__ risc; int bpl; } ;
struct cx8800_dev {struct cx88_core* core; } ;
struct TYPE_6__ {int cxformat; } ;


 int ColorFormatGamma ;
 int GP_COUNT_CONTROL_RESET ;
 int MO_COLOR_CTRL ;
 int MO_DEV_CNTRL2 ;
 int MO_PCI_INTMSK ;
 int MO_VIDY_GPCNTRL ;
 int MO_VID_DMACNTRL ;
 int MO_VID_INTMSK ;
 int PCI_INT_VIDINT ;
 size_t SRAM_CH21 ;
 int VID_CAPTURE_CONTROL ;
 int cx88_set_scale (struct cx88_core*,int ,int ,int ) ;
 int cx88_sram_channel_setup (struct cx88_core*,int *,int ,int ) ;
 int * cx88_sram_channels ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;

__attribute__((used)) static int start_video_dma(struct cx8800_dev *dev,
      struct cx88_dmaqueue *q,
      struct cx88_buffer *buf)
{
 struct cx88_core *core = dev->core;


 cx88_sram_channel_setup(core, &cx88_sram_channels[SRAM_CH21],
    buf->bpl, buf->risc.dma);
 cx88_set_scale(core, buf->vb.width, buf->vb.height, buf->vb.field);
 cx_write(MO_COLOR_CTRL, buf->fmt->cxformat | ColorFormatGamma);


 cx_write(MO_VIDY_GPCNTRL,GP_COUNT_CONTROL_RESET);
 q->count = 1;


 cx_set(MO_PCI_INTMSK, core->pci_irqmask | PCI_INT_VIDINT);
 cx_set(MO_VID_INTMSK, 0x0f0011);


 cx_set(VID_CAPTURE_CONTROL,0x06);


 cx_set(MO_DEV_CNTRL2, (1<<5));
 cx_set(MO_VID_DMACNTRL, 0x11);

 return 0;
}
