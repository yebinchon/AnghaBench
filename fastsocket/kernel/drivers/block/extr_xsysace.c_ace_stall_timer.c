
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ace_device {int fsm_continue_flag; int lock; int stall_timer; int data_count; int fsm_iter_num; int fsm_task; int fsm_state; int dev; } ;


 scalar_t__ HZ ;
 int ace_fsm_dostate (struct ace_device*) ;
 int dev_warn (int ,char*,int ,int ,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ace_stall_timer(unsigned long data)
{
 struct ace_device *ace = (void *)data;
 unsigned long flags;

 dev_warn(ace->dev,
   "kicking stalled fsm; state=%i task=%i iter=%i dc=%i\n",
   ace->fsm_state, ace->fsm_task, ace->fsm_iter_num,
   ace->data_count);
 spin_lock_irqsave(&ace->lock, flags);



 mod_timer(&ace->stall_timer, jiffies + HZ);


 ace->fsm_continue_flag = 1;
 while (ace->fsm_continue_flag)
  ace_fsm_dostate(ace);

 spin_unlock_irqrestore(&ace->lock, flags);
}
