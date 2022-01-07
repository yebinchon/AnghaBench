
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gpio_private {int highalarm; int lowalarm; struct gpio_private* next; } ;
struct file {struct gpio_private* private_data; } ;


 struct gpio_private* alarmlist ;
 int gpio_lock ;
 int gpio_some_alarms ;
 int kfree (struct gpio_private*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
gpio_release(struct inode *inode, struct file *filp)
{
 struct gpio_private *p;
 struct gpio_private *todel;
 unsigned long flags;

 spin_lock_irqsave(&gpio_lock, flags);

 p = alarmlist;
 todel = filp->private_data;



 if (p == todel) {
  alarmlist = todel->next;
 } else {
  while (p->next != todel)
   p = p->next;
  p->next = todel->next;
 }

 kfree(todel);

 p = alarmlist;
 while (p) {
  if (p->highalarm | p->lowalarm) {
   gpio_some_alarms = 1;
   goto out;
  }
  p = p->next;
 }
 gpio_some_alarms = 0;
out:
 spin_unlock_irqrestore(&gpio_lock, flags);
 return 0;
}
