
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cx23885_dmaqueue {int count; } ;
struct cx23885_dev {int * sram_channels; } ;
struct TYPE_4__ {int dma; } ;
struct TYPE_3__ {int width; } ;
struct cx23885_buffer {TYPE_2__ risc; TYPE_1__ vb; } ;


 int DEV_CNTRL2 ;
 size_t SRAM_CH02 ;
 int VID_A_DMA_CTL ;
 int VID_A_INT_MSK ;
 int cx23885_irq_add_enable (struct cx23885_dev*,int) ;
 int cx23885_sram_channel_setup (struct cx23885_dev*,int *,int ,int ) ;
 int cx_set (int ,int) ;

__attribute__((used)) static int cx23885_start_vbi_dma(struct cx23885_dev *dev,
    struct cx23885_dmaqueue *q,
    struct cx23885_buffer *buf)
{

 cx23885_sram_channel_setup(dev, &dev->sram_channels[SRAM_CH02],
    buf->vb.width, buf->risc.dma);


 q->count = 1;


 cx23885_irq_add_enable(dev, 0x01);
 cx_set(VID_A_INT_MSK, 0x000022);


 cx_set(DEV_CNTRL2, (1<<5));
 cx_set(VID_A_DMA_CTL, 0x00000022);

 return 0;
}
