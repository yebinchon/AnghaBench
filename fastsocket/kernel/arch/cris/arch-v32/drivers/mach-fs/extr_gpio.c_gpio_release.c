
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gpio_private {scalar_t__ minor; int lowalarm; unsigned long highalarm; struct gpio_private* next; } ;
struct file {scalar_t__ private_data; } ;


 int CONFIG_ETRAX_VIRTUAL_GPIO_INTERRUPT_PA_PIN ;
 scalar_t__ GPIO_MINOR_A ;
 int alarm_lock ;
 struct gpio_private* alarmlist ;
 unsigned long gpio_pa_high_alarms ;
 unsigned long gpio_pa_low_alarms ;
 unsigned long gpio_some_alarms ;
 int kfree (struct gpio_private*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
gpio_release(struct inode *inode, struct file *filp)
{
 struct gpio_private *p;
 struct gpio_private *todel;

 unsigned long a_high, a_low;
 unsigned long some_alarms;



 spin_lock_irq(&alarm_lock);
 p = alarmlist;
 todel = (struct gpio_private *)filp->private_data;

 if (p == todel) {
  alarmlist = todel->next;
 } else {
  while (p->next != todel)
   p = p->next;
  p->next = todel->next;
 }

 kfree(todel);

 p = alarmlist;
 some_alarms = 0;
 a_high = 0;
 a_low = 0;
 while (p) {
  if (p->minor == GPIO_MINOR_A) {



   a_high |= p->highalarm;
   a_low |= p->lowalarm;
  }

  if (p->highalarm | p->lowalarm)
   some_alarms = 1;
  p = p->next;
 }
 gpio_some_alarms = some_alarms;
 gpio_pa_high_alarms = a_high;
 gpio_pa_low_alarms = a_low;
 spin_unlock_irq(&alarm_lock);

 return 0;
}
