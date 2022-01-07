
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct smi_info {scalar_t__ si_state; int si_lock; scalar_t__ thread; int si_timer; scalar_t__ last_timeout_jiffies; int * curr_msg; int xmit_msgs; int hp_xmit_msgs; scalar_t__ run_to_completion; int stop_operation; } ;
struct ipmi_smi_msg {int* rsp; int* data; int rsp_size; int link; } ;
typedef enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;


 int IPMI_ERR_UNSPECIFIED ;
 scalar_t__ SI_NORMAL ;
 int SI_SHORT_TIMEOUT_USEC ;
 int SI_SM_IDLE ;
 scalar_t__ SI_TIMEOUT_JIFFIES ;
 scalar_t__ atomic_read (int *) ;
 int deliver_recv_msg (struct smi_info*,struct ipmi_smi_msg*) ;
 int do_gettimeofday (struct timeval*) ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int mod_timer (int *,scalar_t__) ;
 int printk (char*,int ,int ) ;
 int smi_event_handler (struct smi_info*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_next_msg (struct smi_info*) ;
 int udelay (int ) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void sender(void *send_info,
     struct ipmi_smi_msg *msg,
     int priority)
{
 struct smi_info *smi_info = send_info;
 enum si_sm_result result;
 unsigned long flags;




 if (atomic_read(&smi_info->stop_operation)) {
  msg->rsp[0] = msg->data[0] | 4;
  msg->rsp[1] = msg->data[1];
  msg->rsp[2] = IPMI_ERR_UNSPECIFIED;
  msg->rsp_size = 3;
  deliver_recv_msg(smi_info, msg);
  return;
 }






 if (smi_info->run_to_completion) {
  list_add_tail(&(msg->link), &(smi_info->xmit_msgs));

  result = smi_event_handler(smi_info, 0);
  while (result != SI_SM_IDLE) {
   udelay(SI_SHORT_TIMEOUT_USEC);
   result = smi_event_handler(smi_info,
         SI_SHORT_TIMEOUT_USEC);
  }
  return;
 }

 spin_lock_irqsave(&smi_info->si_lock, flags);
 if (priority > 0)
  list_add_tail(&msg->link, &smi_info->hp_xmit_msgs);
 else
  list_add_tail(&msg->link, &smi_info->xmit_msgs);

 if (smi_info->si_state == SI_NORMAL && smi_info->curr_msg == ((void*)0)) {






  smi_info->last_timeout_jiffies = jiffies;

  mod_timer(&smi_info->si_timer, jiffies + SI_TIMEOUT_JIFFIES);

  if (smi_info->thread)
   wake_up_process(smi_info->thread);

  start_next_msg(smi_info);
  smi_event_handler(smi_info, 0);
 }
 spin_unlock_irqrestore(&smi_info->si_lock, flags);
}
