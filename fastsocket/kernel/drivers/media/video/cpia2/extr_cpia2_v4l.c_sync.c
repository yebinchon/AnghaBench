
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct framebuf {scalar_t__ status; scalar_t__ length; } ;
struct camera_data {int present; int busy_lock; int streaming; int wq_stream; struct framebuf* buffers; } ;


 int ENOTTY ;
 int ERESTARTSYS ;
 scalar_t__ FRAME_READY ;
 int current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ signal_pending (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int sync(struct camera_data *cam, int frame_nr)
{
 struct framebuf *frame = &cam->buffers[frame_nr];

 while (1) {
  if (frame->status == FRAME_READY)
   return 0;

  if (!cam->streaming) {
   frame->status = FRAME_READY;
   frame->length = 0;
   return 0;
  }

  mutex_unlock(&cam->busy_lock);
  wait_event_interruptible(cam->wq_stream,
      !cam->streaming ||
      frame->status == FRAME_READY);
  mutex_lock(&cam->busy_lock);
  if (signal_pending(current))
   return -ERESTARTSYS;
  if(!cam->present)
   return -ENOTTY;
 }
}
