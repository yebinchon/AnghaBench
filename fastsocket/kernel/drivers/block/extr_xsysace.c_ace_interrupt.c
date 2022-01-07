
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ace_device {int in_irq; scalar_t__ fsm_task; scalar_t__ fsm_state; int data_count; int fsm_continue_flag; int lock; int dev; int data_result; } ;
typedef int irqreturn_t ;


 int ACE_CTRL ;
 int ACE_CTRL_RESETIRQ ;
 int ACE_SECCNTCMD ;
 int ACE_STATUS ;
 int EIO ;
 int IRQ_HANDLED ;
 int ace_fsm_dostate (struct ace_device*) ;
 int ace_in (struct ace_device*,int ) ;
 scalar_t__ ace_in32 (struct ace_device*,int ) ;
 scalar_t__ ace_interrupt_checkstate (struct ace_device*) ;
 int ace_out (struct ace_device*,int ,int) ;
 int dev_err (int ,char*,scalar_t__,scalar_t__,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t ace_interrupt(int irq, void *dev_id)
{
 u16 creg;
 struct ace_device *ace = dev_id;


 spin_lock(&ace->lock);
 ace->in_irq = 1;


 creg = ace_in(ace, ACE_CTRL);
 ace_out(ace, ACE_CTRL, creg | ACE_CTRL_RESETIRQ);
 ace_out(ace, ACE_CTRL, creg);


 if (ace_interrupt_checkstate(ace))
  ace->data_result = -EIO;

 if (ace->fsm_task == 0) {
  dev_err(ace->dev,
   "spurious irq; stat=%.8x ctrl=%.8x cmd=%.4x\n",
   ace_in32(ace, ACE_STATUS), ace_in32(ace, ACE_CTRL),
   ace_in(ace, ACE_SECCNTCMD));
  dev_err(ace->dev, "fsm_task=%i fsm_state=%i data_count=%i\n",
   ace->fsm_task, ace->fsm_state, ace->data_count);
 }


 ace->fsm_continue_flag = 1;
 while (ace->fsm_continue_flag)
  ace_fsm_dostate(ace);


 ace->in_irq = 0;
 spin_unlock(&ace->lock);

 return IRQ_HANDLED;
}
