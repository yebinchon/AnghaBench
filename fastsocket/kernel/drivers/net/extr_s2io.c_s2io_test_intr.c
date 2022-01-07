
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int msi_detected; int msi_wait; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t s2io_test_intr(int irq, void *dev_id)
{
 struct s2io_nic *sp = dev_id;

 sp->msi_detected = 1;
 wake_up(&sp->msi_wait);

 return IRQ_HANDLED;
}
