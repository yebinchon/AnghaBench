
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {scalar_t__ initialized; int prio; scalar_t__* io_allowed; struct channel_obj* channel; } ;
struct file {struct vpif_fh* private_data; } ;
struct common_obj {int started; int lock; int buffer_queue; scalar_t__ io_usrs; } ;
struct channel_obj {scalar_t__ channel_id; scalar_t__ initialized; int prio; int usrs; struct common_obj* common; } ;


 int ERESTARTSYS ;
 scalar_t__ VPIF_CHANNEL0_VIDEO ;
 scalar_t__ VPIF_CHANNEL1_VIDEO ;
 size_t VPIF_VIDEO_INDEX ;
 int channel0_intr_enable (int ) ;
 int channel1_intr_enable (int ) ;
 int debug ;
 int enable_channel0 (int ) ;
 int enable_channel1 (int ) ;
 int kfree (struct vpif_fh*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_prio_close (int *,int *) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_queue_cancel (int *) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_release(struct file *filep)
{
 struct vpif_fh *fh = filep->private_data;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common;

 vpif_dbg(2, debug, "vpif_release\n");

 common = &ch->common[VPIF_VIDEO_INDEX];

 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;


 if (fh->io_allowed[VPIF_VIDEO_INDEX]) {

  common->io_usrs = 0;

  if (VPIF_CHANNEL0_VIDEO == ch->channel_id) {
   enable_channel0(0);
   channel0_intr_enable(0);
  }
  if ((VPIF_CHANNEL1_VIDEO == ch->channel_id) ||
      (2 == common->started)) {
   enable_channel1(0);
   channel1_intr_enable(0);
  }
  common->started = 0;

  videobuf_queue_cancel(&common->buffer_queue);
  videobuf_mmap_free(&common->buffer_queue);
 }


 ch->usrs--;


 mutex_unlock(&common->lock);


 v4l2_prio_close(&ch->prio, &fh->prio);

 if (fh->initialized)
  ch->initialized = 0;

 filep->private_data = ((void*)0);
 kfree(fh);
 return 0;
}
