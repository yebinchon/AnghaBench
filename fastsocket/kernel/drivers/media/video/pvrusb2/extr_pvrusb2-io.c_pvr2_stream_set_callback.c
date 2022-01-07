
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int mutex; int list_lock; int callback_func; void* callback_data; } ;
typedef int pvr2_stream_callback ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pvr2_stream_set_callback(struct pvr2_stream *sp,
         pvr2_stream_callback func,
         void *data)
{
 unsigned long irq_flags;
 mutex_lock(&sp->mutex); do {
  spin_lock_irqsave(&sp->list_lock,irq_flags);
  sp->callback_data = data;
  sp->callback_func = func;
  spin_unlock_irqrestore(&sp->list_lock,irq_flags);
 } while(0); mutex_unlock(&sp->mutex);
}
