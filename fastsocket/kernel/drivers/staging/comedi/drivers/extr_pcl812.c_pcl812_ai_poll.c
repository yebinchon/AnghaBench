
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int spinlock; } ;
struct TYPE_4__ {unsigned int* dmabytestomove; int next_dma_buf; unsigned int ai_poll_ptr; scalar_t__* dmabuf; int ai_dma; } ;
struct TYPE_3__ {int buf_write_count; int buf_read_count; } ;


 TYPE_2__* devpriv ;
 unsigned int get_dma_residue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transfer_from_dma_buf (struct comedi_device*,struct comedi_subdevice*,void*,unsigned int,unsigned int) ;

__attribute__((used)) static int pcl812_ai_poll(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned long flags;
 unsigned int top1, top2, i;

 if (!devpriv->ai_dma)
  return 0;

 spin_lock_irqsave(&dev->spinlock, flags);

 for (i = 0; i < 10; i++) {
  top1 = get_dma_residue(devpriv->ai_dma);
  top2 = get_dma_residue(devpriv->ai_dma);
  if (top1 == top2)
   break;
 }

 if (top1 != top2) {
  spin_unlock_irqrestore(&dev->spinlock, flags);
  return 0;
 }

 top1 = devpriv->dmabytestomove[1 - devpriv->next_dma_buf] - top1;
 top1 >>= 1;
 top2 = top1 - devpriv->ai_poll_ptr;
 if (top2 < 1) {
  spin_unlock_irqrestore(&dev->spinlock, flags);
  return 0;
 }

 transfer_from_dma_buf(dev, s,
         (void *)devpriv->dmabuf[1 -
            devpriv->next_dma_buf],
         devpriv->ai_poll_ptr, top2);

 devpriv->ai_poll_ptr = top1;

 spin_unlock_irqrestore(&dev->spinlock, flags);

 return s->async->buf_write_count - s->async->buf_read_count;
}
