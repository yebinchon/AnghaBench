
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int SCLP_BUSY_INTERVAL ;
 int __sclp_queue_read_req () ;
 int __sclp_set_request_timer (int,void (*) (unsigned long),int ) ;
 int sclp_lock ;
 int sclp_process_queue () ;
 scalar_t__ sclp_running_state ;
 scalar_t__ sclp_running_state_idle ;
 scalar_t__ sclp_running_state_running ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
sclp_request_timeout(unsigned long data)
{
 unsigned long flags;

 spin_lock_irqsave(&sclp_lock, flags);
 if (data) {
  if (sclp_running_state == sclp_running_state_running) {


   __sclp_queue_read_req();
   sclp_running_state = sclp_running_state_idle;
  }
 } else {
  __sclp_set_request_timer(SCLP_BUSY_INTERVAL * HZ,
      sclp_request_timeout, 0);
 }
 spin_unlock_irqrestore(&sclp_lock, flags);
 sclp_process_queue();
}
