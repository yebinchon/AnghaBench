
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int async_queue; int misc_wait; int count; } ;


 int IRQ_HANDLED ;
 int POLL_IN ;
 int SIGIO ;
 int atomic_inc (int *) ;
 int kill_fasync (int *,int ,int ) ;
 TYPE_1__ lis3_dev ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t lis302dl_interrupt(int irq, void *dummy)
{





 atomic_inc(&lis3_dev.count);

 wake_up_interruptible(&lis3_dev.misc_wait);
 kill_fasync(&lis3_dev.async_queue, SIGIO, POLL_IN);
 return IRQ_HANDLED;
}
