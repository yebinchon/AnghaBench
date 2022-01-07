
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dmaqueue {scalar_t__ curr; struct saa7146_dev* dev; } ;
struct saa7146_dev {int slock; } ;


 int DEB_D (char*) ;
 int DEB_EE (char*) ;
 int VIDEOBUF_ERROR ;
 int saa7146_buffer_finish (struct saa7146_dev*,struct saa7146_dmaqueue*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void saa7146_buffer_timeout(unsigned long data)
{
 struct saa7146_dmaqueue *q = (struct saa7146_dmaqueue*)data;
 struct saa7146_dev *dev = q->dev;
 unsigned long flags;

 DEB_EE(("dev:%p, dmaq:%p\n", dev, q));

 spin_lock_irqsave(&dev->slock,flags);
 if (q->curr) {
  DEB_D(("timeout on %p\n", q->curr));
  saa7146_buffer_finish(dev,q,VIDEOBUF_ERROR);
 }
 spin_unlock_irqrestore(&dev->slock,flags);
}
