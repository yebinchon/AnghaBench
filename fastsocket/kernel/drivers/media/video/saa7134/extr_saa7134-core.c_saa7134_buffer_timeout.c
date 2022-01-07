
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dmaqueue {scalar_t__ curr; struct saa7134_dev* dev; } ;
struct saa7134_dev {int slock; } ;


 int SAA7134_REGION_ENABLE ;
 int VIDEOBUF_ERROR ;
 int dprintk (char*,scalar_t__) ;
 int saa7134_buffer_finish (struct saa7134_dev*,struct saa7134_dmaqueue*,int ) ;
 int saa7134_buffer_next (struct saa7134_dev*,struct saa7134_dmaqueue*) ;
 int saa_writeb (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void saa7134_buffer_timeout(unsigned long data)
{
 struct saa7134_dmaqueue *q = (struct saa7134_dmaqueue*)data;
 struct saa7134_dev *dev = q->dev;
 unsigned long flags;

 spin_lock_irqsave(&dev->slock,flags);


 saa_writeb(SAA7134_REGION_ENABLE, 0x00);
 saa_writeb(SAA7134_REGION_ENABLE, 0x80);
 saa_writeb(SAA7134_REGION_ENABLE, 0x00);



 if (q->curr) {
  dprintk("timeout on %p\n",q->curr);
  saa7134_buffer_finish(dev,q,VIDEOBUF_ERROR);
 }
 saa7134_buffer_next(dev,q);
 spin_unlock_irqrestore(&dev->slock,flags);
}
