
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gpio_private {int minor; struct gpio_private* next; int alarm_wq; scalar_t__ data_mask; scalar_t__ clk_mask; scalar_t__ lowalarm; scalar_t__ highalarm; scalar_t__ changeable_bits; scalar_t__ changeable_dir; int * dir_shadow; int * dir; int * shadow; int * port; } ;
struct file {struct gpio_private* private_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIO_MINOR_LAST ;
 scalar_t__ USE_PORTS (struct gpio_private*) ;
 struct gpio_private* alarmlist ;
 scalar_t__* changeable_bits ;
 scalar_t__* changeable_dir ;
 int ** dir ;
 int ** dir_shadow ;
 int gpio_lock ;
 int iminor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 struct gpio_private* kzalloc (int,int ) ;
 int lock_kernel () ;
 int ** ports ;
 int ** shads ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlock_kernel () ;

__attribute__((used)) static int
gpio_open(struct inode *inode, struct file *filp)
{
 struct gpio_private *priv;
 int p = iminor(inode);
 unsigned long flags;

 if (p > GPIO_MINOR_LAST)
  return -EINVAL;

 priv = kzalloc(sizeof(struct gpio_private), GFP_KERNEL);

 if (!priv)
  return -ENOMEM;

 lock_kernel();
 priv->minor = p;



 if (USE_PORTS(priv)) {
  priv->port = ports[p];
  priv->shadow = shads[p];
  priv->dir = dir[p];
  priv->dir_shadow = dir_shadow[p];
  priv->changeable_dir = changeable_dir[p];
  priv->changeable_bits = changeable_bits[p];
 } else {
  priv->port = ((void*)0);
  priv->shadow = ((void*)0);
  priv->dir = ((void*)0);
  priv->dir_shadow = ((void*)0);
  priv->changeable_dir = 0;
  priv->changeable_bits = 0;
 }

 priv->highalarm = 0;
 priv->lowalarm = 0;
 priv->clk_mask = 0;
 priv->data_mask = 0;
 init_waitqueue_head(&priv->alarm_wq);

 filp->private_data = priv;


 spin_lock_irqsave(&gpio_lock, flags);
 priv->next = alarmlist;
 alarmlist = priv;
 spin_unlock_irqrestore(&gpio_lock, flags);

 unlock_kernel();
 return 0;
}
