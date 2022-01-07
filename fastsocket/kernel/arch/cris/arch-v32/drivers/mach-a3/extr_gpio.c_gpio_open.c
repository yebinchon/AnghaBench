
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gpio_private {int minor; struct gpio_private* next; int alarm_wq; scalar_t__ lowalarm; scalar_t__ highalarm; scalar_t__ data_mask; scalar_t__ clk_mask; } ;
struct file {struct gpio_private* private_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIO_MINOR_LAST ;
 int GPIO_MINOR_LAST_PWM ;
 int GPIO_MINOR_PWM0 ;
 struct gpio_private* alarmlist ;
 int gpio_lock ;
 int iminor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 struct gpio_private* kmalloc (int,int ) ;
 int lock_kernel () ;
 int memset (struct gpio_private*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int gpio_open(struct inode *inode, struct file *filp)
{
 struct gpio_private *priv;
 int p = iminor(inode);

 if (p > GPIO_MINOR_LAST_PWM ||
     (p > GPIO_MINOR_LAST && p < GPIO_MINOR_PWM0))
  return -EINVAL;

 priv = kmalloc(sizeof(struct gpio_private), GFP_KERNEL);

 if (!priv)
  return -ENOMEM;

 lock_kernel();
 memset(priv, 0, sizeof(*priv));

 priv->minor = p;
 filp->private_data = priv;


 if (p <= GPIO_MINOR_LAST) {

  priv->clk_mask = 0;
  priv->data_mask = 0;
  priv->highalarm = 0;
  priv->lowalarm = 0;

  init_waitqueue_head(&priv->alarm_wq);


  spin_lock_irq(&gpio_lock);
  priv->next = alarmlist;
  alarmlist = priv;
  spin_unlock_irq(&gpio_lock);
 }

 unlock_kernel();
 return 0;
}
