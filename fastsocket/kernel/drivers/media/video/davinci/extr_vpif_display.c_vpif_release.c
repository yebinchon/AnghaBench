
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_fh {scalar_t__ initialized; int prio; scalar_t__* io_allowed; struct channel_obj* channel; } ;
struct file {struct vpif_fh* private_data; } ;
struct common_obj {int started; int lock; int numbuffers; int buffer_queue; scalar_t__ io_usrs; } ;
struct channel_obj {size_t channel_id; int prio; scalar_t__ initialized; int usrs; struct common_obj* common; } ;
struct TYPE_2__ {int * numbuffers; } ;


 int ERESTARTSYS ;
 size_t VPIF_CHANNEL2_VIDEO ;
 size_t VPIF_CHANNEL3_VIDEO ;
 size_t VPIF_VIDEO_INDEX ;
 int atomic_dec (int *) ;
 int channel2_intr_enable (int ) ;
 int channel3_intr_enable (int ) ;
 TYPE_1__ config_params ;
 int enable_channel2 (int ) ;
 int enable_channel3 (int ) ;
 int kfree (struct vpif_fh*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_prio_close (int *,int *) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_queue_cancel (int *) ;

__attribute__((used)) static int vpif_release(struct file *filep)
{
 struct vpif_fh *fh = filep->private_data;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];

 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;


 if (fh->io_allowed[VPIF_VIDEO_INDEX]) {

  common->io_usrs = 0;

  if (VPIF_CHANNEL2_VIDEO == ch->channel_id) {
   enable_channel2(0);
   channel2_intr_enable(0);
  }
  if ((VPIF_CHANNEL3_VIDEO == ch->channel_id) ||
      (2 == common->started)) {
   enable_channel3(0);
   channel3_intr_enable(0);
  }
  common->started = 0;

  videobuf_queue_cancel(&common->buffer_queue);
  videobuf_mmap_free(&common->buffer_queue);
  common->numbuffers =
      config_params.numbuffers[ch->channel_id];
 }

 mutex_unlock(&common->lock);


 atomic_dec(&ch->usrs);

 if (fh->initialized)
  ch->initialized = 0;


 v4l2_prio_close(&ch->prio, &fh->prio);
 filep->private_data = ((void*)0);
 fh->initialized = 0;
 kfree(fh);

 return 0;
}
