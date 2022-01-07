
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ilo_hwinfo {int alloc_lock; TYPE_1__** ccb_alloc; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ccb_waitq; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int clear_pending_db (struct ilo_hwinfo*,int) ;
 int get_device_outbound (struct ilo_hwinfo*) ;
 int ilo_set_reset (struct ilo_hwinfo*) ;
 scalar_t__ is_db_reset (int) ;
 int max_ccb ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t ilo_isr(int irq, void *data)
{
 struct ilo_hwinfo *hw = data;
 int pending, i;

 spin_lock(&hw->alloc_lock);


 pending = get_device_outbound(hw);
 if (!pending) {
  spin_unlock(&hw->alloc_lock);
  return IRQ_NONE;
 }

 if (is_db_reset(pending)) {

  pending = -1;
  ilo_set_reset(hw);
 }

 for (i = 0; i < max_ccb; i++) {
  if (!hw->ccb_alloc[i])
   continue;
  if (pending & (1 << i))
   wake_up_interruptible(&hw->ccb_alloc[i]->ccb_waitq);
 }


 clear_pending_db(hw, pending);

 spin_unlock(&hw->alloc_lock);

 return IRQ_HANDLED;
}
