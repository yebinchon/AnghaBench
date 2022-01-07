
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gpio_private {int minor; struct gpio_private* next; int alarm_wq; scalar_t__ lowalarm; scalar_t__ highalarm; scalar_t__ data_mask; scalar_t__ clk_mask; } ;
struct file {void* private_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIO_MINOR_LAST ;
 int alarm_lock ;
 struct gpio_private* alarmlist ;
 int iminor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 struct gpio_private* kmalloc (int,int ) ;
 int lock_kernel () ;
 int memset (struct gpio_private*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int
gpio_open(struct inode *inode, struct file *filp)
{
 struct gpio_private *priv;
 int p = iminor(inode);

 if (p > GPIO_MINOR_LAST)
  return -EINVAL;

 priv = kmalloc(sizeof(struct gpio_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 lock_kernel();
 memset(priv, 0, sizeof(*priv));

 priv->minor = p;



 priv->clk_mask = 0;
 priv->data_mask = 0;
 priv->highalarm = 0;
 priv->lowalarm = 0;
 init_waitqueue_head(&priv->alarm_wq);

 filp->private_data = (void *)priv;


 spin_lock_irq(&alarm_lock);
 priv->next = alarmlist;
 alarmlist = priv;
 spin_unlock_irq(&alarm_lock);

 unlock_kernel();
 return 0;
}
