
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct file {struct cx23885_fh* private_data; } ;
struct TYPE_7__ {struct cx23885_fh* read_buf; } ;
struct TYPE_6__ {scalar_t__ reading; scalar_t__ streaming; } ;
struct cx23885_fh {TYPE_3__ vidq; TYPE_1__ vbiq; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int RESOURCE_OVERLAY ;
 int RESOURCE_VBI ;
 int RESOURCE_VIDEO ;
 int buffer_release (TYPE_3__*,struct cx23885_fh*) ;
 int kfree (struct cx23885_fh*) ;
 scalar_t__ res_check (struct cx23885_fh*,int ) ;
 int res_free (struct cx23885_dev*,struct cx23885_fh*,int ) ;
 int videobuf_mmap_free (TYPE_3__*) ;
 int videobuf_queue_cancel (TYPE_3__*) ;
 int videobuf_read_stop (TYPE_1__*) ;
 int videobuf_streamoff (TYPE_1__*) ;

__attribute__((used)) static int video_release(struct file *file)
{
 struct cx23885_fh *fh = file->private_data;
 struct cx23885_dev *dev = fh->dev;


 if (res_check(fh, RESOURCE_OVERLAY)) {

  res_free(dev, fh, RESOURCE_OVERLAY);
 }


 if (res_check(fh, RESOURCE_VIDEO)) {
  videobuf_queue_cancel(&fh->vidq);
  res_free(dev, fh, RESOURCE_VIDEO);
 }
 if (fh->vidq.read_buf) {
  buffer_release(&fh->vidq, fh->vidq.read_buf);
  kfree(fh->vidq.read_buf);
 }


 if (res_check(fh, RESOURCE_VBI)) {
  if (fh->vbiq.streaming)
   videobuf_streamoff(&fh->vbiq);
  if (fh->vbiq.reading)
   videobuf_read_stop(&fh->vbiq);
  res_free(dev, fh, RESOURCE_VBI);
 }

 videobuf_mmap_free(&fh->vidq);
 file->private_data = ((void*)0);
 kfree(fh);






 return 0;
}
