
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_t ;
struct TYPE_2__ {int frame_wait_queue; } ;
struct vino_channel_settings {TYPE_1__ fb_queue; } ;


 int EINTR ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int dprintk (char*,...) ;
 int init_waitqueue_entry (int *,int ) ;
 int msecs_to_jiffies (int) ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout_interruptible (int ) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int vino_wait_for_frame(struct vino_channel_settings *vcs)
{
 wait_queue_t wait;
 int err = 0;

 dprintk("vino_wait_for_frame():\n");

 init_waitqueue_entry(&wait, current);

 add_wait_queue(&vcs->fb_queue.frame_wait_queue, &wait);



 schedule_timeout_interruptible(msecs_to_jiffies(100));

 if (signal_pending(current))
  err = -EINTR;

 remove_wait_queue(&vcs->fb_queue.frame_wait_queue, &wait);

 dprintk("vino_wait_for_frame(): waiting for frame %s\n",
  err ? "failed" : "ok");

 return err;
}
