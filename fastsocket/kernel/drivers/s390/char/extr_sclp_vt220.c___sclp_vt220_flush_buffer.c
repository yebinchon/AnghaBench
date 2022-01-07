
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer (int *) ;
 int sclp_sync_wait () ;
 int sclp_vt220_emit_current () ;
 int sclp_vt220_lock ;
 scalar_t__ sclp_vt220_queue_running ;
 int sclp_vt220_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void __sclp_vt220_flush_buffer(void)
{
 unsigned long flags;

 sclp_vt220_emit_current();
 spin_lock_irqsave(&sclp_vt220_lock, flags);
 if (timer_pending(&sclp_vt220_timer))
  del_timer(&sclp_vt220_timer);
 while (sclp_vt220_queue_running) {
  spin_unlock_irqrestore(&sclp_vt220_lock, flags);
  sclp_sync_wait();
  spin_lock_irqsave(&sclp_vt220_lock, flags);
 }
 spin_unlock_irqrestore(&sclp_vt220_lock, flags);
}
