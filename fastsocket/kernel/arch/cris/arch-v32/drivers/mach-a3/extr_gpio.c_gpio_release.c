
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gpio_private {scalar_t__ minor; int lowalarm; unsigned long highalarm; struct gpio_private* next; } ;
struct file {struct gpio_private* private_data; } ;


 int CONFIG_ETRAX_VIRTUAL_GPIO_INTERRUPT_PA_PIN ;
 scalar_t__ GPIO_MINOR_A ;
 scalar_t__ GPIO_MINOR_LAST ;
 struct gpio_private* alarmlist ;
 int gpio_lock ;
 int kfree (struct gpio_private*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int gpio_release(struct inode *inode, struct file *filp)
{
 struct gpio_private *p;
 struct gpio_private *todel;

 unsigned long a_high, a_low;


 todel = filp->private_data;


 if (todel->minor <= GPIO_MINOR_LAST) {
  spin_lock_irq(&gpio_lock);
  p = alarmlist;

  if (p == todel)
   alarmlist = todel->next;
   else {
   while (p->next != todel)
    p = p->next;
   p->next = todel->next;
  }


  p = alarmlist;
  a_high = 0;
  a_low = 0;
  while (p) {
   if (p->minor == GPIO_MINOR_A) {



    a_high |= p->highalarm;
    a_low |= p->lowalarm;
   }

   p = p->next;
  }
  spin_unlock_irq(&gpio_lock);
 }
 kfree(todel);

 return 0;
}
