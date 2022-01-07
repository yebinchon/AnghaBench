
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int lock ;
 int pcf_pending ;
 int pcf_wait ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t pcf_isa_handler(int this_irq, void *dev_id) {
 spin_lock(&lock);
 pcf_pending = 1;
 spin_unlock(&lock);
 wake_up_interruptible(&pcf_wait);
 return IRQ_HANDLED;
}
