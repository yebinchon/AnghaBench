
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame_wait_queue; } ;
struct vino_channel_settings {TYPE_1__ fb_queue; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int dprintk (char*,...) ;
 int poll_wait (struct file*,int *,int *) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 scalar_t__ vino_queue_get_outgoing (TYPE_1__*,unsigned int*) ;

__attribute__((used)) static unsigned int vino_poll(struct file *file, poll_table *pt)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 unsigned int outgoing;
 unsigned int ret = 0;




 dprintk("poll():\n");

 if (vino_queue_get_outgoing(&vcs->fb_queue, &outgoing)) {
  dprintk("poll(): vino_queue_get_outgoing() failed\n");
  ret = POLLERR;
  goto error;
 }
 if (outgoing > 0)
  goto over;

 poll_wait(file, &vcs->fb_queue.frame_wait_queue, pt);

 if (vino_queue_get_outgoing(&vcs->fb_queue, &outgoing)) {
  dprintk("poll(): vino_queue_get_outgoing() failed\n");
  ret = POLLERR;
  goto error;
 }

over:
 dprintk("poll(): data %savailable\n",
  (outgoing > 0) ? "" : "not ");

 if (outgoing > 0)
  ret = POLLIN | POLLRDNORM;

error:
 return ret;
}
