
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {int slock; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int RESOURCE_OVERLAY ;
 int dprintk (char*) ;
 int res_check (struct saa7134_fh*,int ) ;
 int res_free (struct saa7134_dev*,struct saa7134_fh*,int ) ;
 int res_get (struct saa7134_dev*,struct saa7134_fh*,int ) ;
 scalar_t__ saa7134_no_overlay ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_preview (struct saa7134_dev*,struct saa7134_fh*) ;
 int stop_preview (struct saa7134_dev*,struct saa7134_fh*) ;

__attribute__((used)) static int saa7134_overlay(struct file *file, void *f, unsigned int on)
{
 struct saa7134_fh *fh = f;
 struct saa7134_dev *dev = fh->dev;
 unsigned long flags;

 if (on) {
  if (saa7134_no_overlay > 0) {
   dprintk("no_overlay\n");
   return -EINVAL;
  }

  if (!res_get(dev, fh, RESOURCE_OVERLAY))
   return -EBUSY;
  spin_lock_irqsave(&dev->slock, flags);
  start_preview(dev, fh);
  spin_unlock_irqrestore(&dev->slock, flags);
 }
 if (!on) {
  if (!res_check(fh, RESOURCE_OVERLAY))
   return -EINVAL;
  spin_lock_irqsave(&dev->slock, flags);
  stop_preview(dev, fh);
  spin_unlock_irqrestore(&dev->slock, flags);
  res_free(dev, fh, RESOURCE_OVERLAY);
 }
 return 0;
}
