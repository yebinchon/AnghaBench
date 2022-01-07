
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct au0828_dmaqueue {int dummy; } ;
struct TYPE_3__ {struct au0828_buffer* vbi_buf; } ;
struct au0828_dev {int vbi_timeout_running; int slock; int vbi_timeout; TYPE_1__ isoc_ctl; struct au0828_dmaqueue vbiq; } ;
struct TYPE_4__ {int size; } ;
struct au0828_buffer {TYPE_2__ vb; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int memset (unsigned char*,int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vbi_buffer_filled (struct au0828_dev*,struct au0828_dmaqueue*,struct au0828_buffer*) ;
 int vbi_get_next_buf (struct au0828_dmaqueue*,struct au0828_buffer**) ;
 unsigned char* videobuf_to_vmalloc (TYPE_2__*) ;

void au0828_vbi_buffer_timeout(unsigned long data)
{
 struct au0828_dev *dev = (struct au0828_dev *) data;
 struct au0828_dmaqueue *dma_q = &dev->vbiq;
 struct au0828_buffer *buf;
 unsigned char *vbi_data;
 unsigned long flags = 0;

 spin_lock_irqsave(&dev->slock, flags);

 buf = dev->isoc_ctl.vbi_buf;
 if (buf != ((void*)0)) {
  vbi_data = videobuf_to_vmalloc(&buf->vb);
  memset(vbi_data, 0x00, buf->vb.size);
  vbi_buffer_filled(dev, dma_q, buf);
 }
 vbi_get_next_buf(dma_q, &buf);

 if (dev->vbi_timeout_running == 1)
  mod_timer(&dev->vbi_timeout, jiffies + (HZ / 10));
 spin_unlock_irqrestore(&dev->slock, flags);
}
