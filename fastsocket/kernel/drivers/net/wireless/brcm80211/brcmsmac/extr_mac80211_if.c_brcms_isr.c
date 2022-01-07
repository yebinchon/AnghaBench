
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_info {int isr_lock; int tasklet; int wlc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ brcms_c_isr (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t brcms_isr(int irq, void *dev_id)
{
 struct brcms_info *wl;
 irqreturn_t ret = IRQ_NONE;

 wl = (struct brcms_info *) dev_id;

 spin_lock(&wl->isr_lock);


 if (brcms_c_isr(wl->wlc)) {

  tasklet_schedule(&wl->tasklet);
  ret = IRQ_HANDLED;
 }

 spin_unlock(&wl->isr_lock);

 return ret;
}
