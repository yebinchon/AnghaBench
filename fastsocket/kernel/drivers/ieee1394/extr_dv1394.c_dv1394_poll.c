
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_card {scalar_t__ n_frames; int active_frame; scalar_t__ n_clear_frames; int spinlock; int waitq; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 struct video_card* file_to_video_card (struct file*) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int dv1394_poll(struct file *file, struct poll_table_struct *wait)
{
 struct video_card *video = file_to_video_card(file);
 unsigned int mask = 0;
 unsigned long flags;

 poll_wait(file, &video->waitq, wait);

 spin_lock_irqsave(&video->spinlock, flags);
 if ( video->n_frames == 0 ) {

 } else if ( video->active_frame == -1 ) {

  mask |= POLLOUT;
 } else {

  if (video->n_clear_frames >0)
   mask |= POLLOUT | POLLIN;
 }
 spin_unlock_irqrestore(&video->spinlock, flags);

 return mask;
}
