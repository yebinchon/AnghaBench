
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivi_fh {int vb_vidq; struct vivi_dev* dev; } ;
struct vivi_dmaqueue {int dummy; } ;
struct vivi_dev {int users; int mutex; struct vivi_dmaqueue vidq; } ;
struct file {struct vivi_fh* private_data; } ;
struct TYPE_2__ {int minor; } ;


 int dprintk (struct vivi_dev*,int,char*,int,int ) ;
 int kfree (struct vivi_fh*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* video_devdata (struct file*) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_stop (int *) ;
 int vivi_stop_thread (struct vivi_dmaqueue*) ;

__attribute__((used)) static int vivi_close(struct file *file)
{
 struct vivi_fh *fh = file->private_data;
 struct vivi_dev *dev = fh->dev;
 struct vivi_dmaqueue *vidq = &dev->vidq;

 int minor = video_devdata(file)->minor;

 vivi_stop_thread(vidq);
 videobuf_stop(&fh->vb_vidq);
 videobuf_mmap_free(&fh->vb_vidq);

 kfree(fh);

 mutex_lock(&dev->mutex);
 dev->users--;
 mutex_unlock(&dev->mutex);

 dprintk(dev, 1, "close called (minor=%d, users=%d)\n",
  minor, dev->users);

 return 0;
}
