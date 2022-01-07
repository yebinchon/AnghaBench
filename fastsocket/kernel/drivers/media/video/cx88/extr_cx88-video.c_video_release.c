
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct file {struct cx8800_fh* private_data; } ;
struct TYPE_6__ {struct cx8800_fh* read_buf; } ;
struct cx8800_fh {TYPE_1__ vbiq; TYPE_1__ vidq; struct cx8800_dev* dev; } ;
struct cx8800_dev {TYPE_4__* core; } ;
struct TYPE_7__ {int lock; int users; } ;


 int RESOURCE_OVERLAY ;
 int RESOURCE_VBI ;
 int RESOURCE_VIDEO ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int buffer_release (TYPE_1__*,struct cx8800_fh*) ;
 int call_all (TYPE_4__*,int ,int ,int ) ;
 int core ;
 int kfree (struct cx8800_fh*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ res_check (struct cx8800_fh*,int ) ;
 int res_free (struct cx8800_dev*,struct cx8800_fh*,int ) ;
 int s_power ;
 int videobuf_mmap_free (TYPE_1__*) ;
 int videobuf_queue_cancel (TYPE_1__*) ;
 int videobuf_stop (TYPE_1__*) ;

__attribute__((used)) static int video_release(struct file *file)
{
 struct cx8800_fh *fh = file->private_data;
 struct cx8800_dev *dev = fh->dev;


 if (res_check(fh, RESOURCE_OVERLAY)) {

  res_free(dev,fh,RESOURCE_OVERLAY);
 }


 if (res_check(fh, RESOURCE_VIDEO)) {
  videobuf_queue_cancel(&fh->vidq);
  res_free(dev,fh,RESOURCE_VIDEO);
 }
 if (fh->vidq.read_buf) {
  buffer_release(&fh->vidq,fh->vidq.read_buf);
  kfree(fh->vidq.read_buf);
 }


 if (res_check(fh, RESOURCE_VBI)) {
  videobuf_stop(&fh->vbiq);
  res_free(dev,fh,RESOURCE_VBI);
 }

 videobuf_mmap_free(&fh->vidq);
 videobuf_mmap_free(&fh->vbiq);

 mutex_lock(&dev->core->lock);
 file->private_data = ((void*)0);
 kfree(fh);

 if(atomic_dec_and_test(&dev->core->users))
  call_all(dev->core, core, s_power, 0);
 mutex_unlock(&dev->core->lock);

 return 0;
}
