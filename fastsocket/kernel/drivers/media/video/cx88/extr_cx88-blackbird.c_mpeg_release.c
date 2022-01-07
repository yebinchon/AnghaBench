
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct cx8802_fh* private_data; } ;
struct cx8802_fh {int mpegq; struct cx8802_dev* dev; } ;
struct cx8802_driver {int (* request_release ) (struct cx8802_driver*) ;} ;
struct cx8802_dev {TYPE_1__* core; scalar_t__ mpeg_active; } ;
struct TYPE_2__ {int mpeg_users; int lock; } ;


 int CX88_MPEG_BLACKBIRD ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int blackbird_stop_codec (struct cx8802_dev*) ;
 int cx8802_cancel_buffers (struct cx8802_dev*) ;
 struct cx8802_driver* cx8802_get_driver (struct cx8802_dev*,int ) ;
 int kfree (struct cx8802_fh*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct cx8802_driver*) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_stop (int *) ;

__attribute__((used)) static int mpeg_release(struct file *file)
{
 struct cx8802_fh *fh = file->private_data;
 struct cx8802_dev *dev = fh->dev;
 struct cx8802_driver *drv = ((void*)0);

 if (dev->mpeg_active && atomic_read(&dev->core->mpeg_users) == 1)
  blackbird_stop_codec(dev);

 cx8802_cancel_buffers(fh->dev);

 videobuf_stop(&fh->mpegq);

 videobuf_mmap_free(&fh->mpegq);

 mutex_lock(&dev->core->lock);
 file->private_data = ((void*)0);
 kfree(fh);
 mutex_unlock(&dev->core->lock);


 drv = cx8802_get_driver(dev, CX88_MPEG_BLACKBIRD);
 if (drv)
  drv->request_release(drv);

 atomic_dec(&dev->core->mpeg_users);

 return 0;
}
