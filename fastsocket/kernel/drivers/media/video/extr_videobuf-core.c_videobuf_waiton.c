
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {scalar_t__ ext_lock; } ;
struct videobuf_buffer {int done; int magic; } ;


 int EAGAIN ;
 int MAGIC_BUFFER ;
 int MAGIC_CHECK (int ,int ) ;
 scalar_t__ is_state_active_or_queued (struct videobuf_queue*,struct videobuf_buffer*) ;
 scalar_t__ mutex_is_locked (scalar_t__) ;
 int mutex_lock (scalar_t__) ;
 int mutex_unlock (scalar_t__) ;
 int wait_event (int ,scalar_t__) ;
 int wait_event_interruptible (int ,scalar_t__) ;

int videobuf_waiton(struct videobuf_queue *q, struct videobuf_buffer *vb,
  int non_blocking, int intr)
{
 bool is_ext_locked;
 int ret = 0;

 MAGIC_CHECK(vb->magic, MAGIC_BUFFER);

 if (non_blocking) {
  if (is_state_active_or_queued(q, vb))
   return 0;
  return -EAGAIN;
 }

 is_ext_locked = q->ext_lock && mutex_is_locked(q->ext_lock);



 if (is_ext_locked)
  mutex_unlock(q->ext_lock);
 if (intr)
  ret = wait_event_interruptible(vb->done, is_state_active_or_queued(q, vb));
 else
  wait_event(vb->done, is_state_active_or_queued(q, vb));

 if (is_ext_locked)
  mutex_lock(q->ext_lock);

 return ret;
}
