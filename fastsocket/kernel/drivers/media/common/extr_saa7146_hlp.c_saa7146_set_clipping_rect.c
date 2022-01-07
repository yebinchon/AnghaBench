
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct saa7146_video_dma {int base_even; int base_odd; int prot_addr; int base_page; int pitch; int num_line_byte; } ;
struct TYPE_3__ {int field; } ;
struct TYPE_4__ {scalar_t__ nclips; TYPE_1__ win; } ;
struct saa7146_fh {TYPE_2__ ov; struct saa7146_dev* dev; } ;
struct saa7146_dev {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int BASE_EVEN2 ;
 int BASE_ODD2 ;
 int BASE_PAGE2 ;
 int CLIP_FORMAT_CTRL ;
 int MASK_03 ;
 int MASK_05 ;
 int MASK_19 ;
 int MASK_21 ;
 int MC1 ;
 int MC2 ;
 int NUM_LINE_BYTE2 ;
 int PCI_BT_V1 ;
 int PITCH2 ;
 int PROT_ADDR2 ;
 int SAA7146_CLIPPING_RECT ;
 int calculate_clipping_registers_rect (struct saa7146_dev*,struct saa7146_fh*,struct saa7146_video_dma*,int*,int*,int) ;
 int saa7146_disable_clipping (struct saa7146_dev*) ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

__attribute__((used)) static void saa7146_set_clipping_rect(struct saa7146_fh *fh)
{
 struct saa7146_dev *dev = fh->dev;
 enum v4l2_field field = fh->ov.win.field;
 struct saa7146_video_dma vdma2;
 u32 clip_format;
 u32 arbtr_ctrl;


 if( fh->ov.nclips == 0 ) {
  saa7146_disable_clipping(dev);
  return;
 }

 clip_format = saa7146_read(dev, CLIP_FORMAT_CTRL);
 arbtr_ctrl = saa7146_read(dev, PCI_BT_V1);

 calculate_clipping_registers_rect(dev, fh, &vdma2, &clip_format, &arbtr_ctrl, field);


 clip_format &= 0xffff0008;
 clip_format |= (SAA7146_CLIPPING_RECT << 4);


 saa7146_write(dev, BASE_EVEN2, vdma2.base_even);
 saa7146_write(dev, BASE_ODD2, vdma2.base_odd);
 saa7146_write(dev, PROT_ADDR2, vdma2.prot_addr);
 saa7146_write(dev, BASE_PAGE2, vdma2.base_page);
 saa7146_write(dev, PITCH2, vdma2.pitch);
 saa7146_write(dev, NUM_LINE_BYTE2, vdma2.num_line_byte);


 saa7146_write(dev, CLIP_FORMAT_CTRL,clip_format);
 saa7146_write(dev, PCI_BT_V1, arbtr_ctrl);


 saa7146_write(dev, MC2, (MASK_05 | MASK_21 | MASK_03 | MASK_19));
 saa7146_write(dev, MC1, (MASK_05 | MASK_21));
}
