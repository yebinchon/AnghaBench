
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivi_fh {size_t type; int width; int height; int vb_vidq; int * fmt; struct vivi_dev* dev; } ;
struct vivi_dev {int users; int h; int m; int s; int ms; int slock; int timestr; int jiffies; scalar_t__ mv_count; int mutex; TYPE_1__* vfd; } ;
struct vivi_buffer {int dummy; } ;
struct file {struct vivi_fh* private_data; } ;
struct TYPE_2__ {int num; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int dprintk (struct vivi_dev*,int,char*,int ,int ,int) ;
 int * formats ;
 int jiffies ;
 struct vivi_fh* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (int ,char*,int,int,int,int) ;
 int * v4l2_type_names ;
 struct vivi_dev* video_drvdata (struct file*) ;
 int videobuf_queue_vmalloc_init (int *,int *,int *,int *,size_t,int ,int,struct vivi_fh*) ;
 int vivi_start_thread (struct vivi_fh*) ;
 int vivi_video_qops ;

__attribute__((used)) static int vivi_open(struct file *file)
{
 struct vivi_dev *dev = video_drvdata(file);
 struct vivi_fh *fh = ((void*)0);
 int retval = 0;

 mutex_lock(&dev->mutex);
 dev->users++;

 if (dev->users > 1) {
  dev->users--;
  mutex_unlock(&dev->mutex);
  return -EBUSY;
 }

 dprintk(dev, 1, "open /dev/video%d type=%s users=%d\n", dev->vfd->num,
  v4l2_type_names[V4L2_BUF_TYPE_VIDEO_CAPTURE], dev->users);


 fh = kzalloc(sizeof(*fh), GFP_KERNEL);
 if (((void*)0) == fh) {
  dev->users--;
  retval = -ENOMEM;
 }
 mutex_unlock(&dev->mutex);

 if (retval)
  return retval;

 file->private_data = fh;
 fh->dev = dev;

 fh->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 fh->fmt = &formats[0];
 fh->width = 640;
 fh->height = 480;


 dev->h = 0;
 dev->m = 0;
 dev->s = 0;
 dev->ms = 0;
 dev->mv_count = 0;
 dev->jiffies = jiffies;
 sprintf(dev->timestr, "%02d:%02d:%02d:%03d",
   dev->h, dev->m, dev->s, dev->ms);

 videobuf_queue_vmalloc_init(&fh->vb_vidq, &vivi_video_qops,
   ((void*)0), &dev->slock, fh->type, V4L2_FIELD_INTERLACED,
   sizeof(struct vivi_buffer), fh);

 vivi_start_thread(fh);

 return 0;
}
