
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_private {scalar_t__ minor; unsigned long highalarm; unsigned long lowalarm; int alarm_wq; } ;
struct file {struct gpio_private* private_data; } ;
typedef int poll_table ;


 int DP (int ) ;
 scalar_t__ GPIO_MINOR_A ;
 scalar_t__ GPIO_MINOR_B ;
 scalar_t__ GPIO_MINOR_G ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 unsigned long* R_IRQ_MASK1_SET ;
 unsigned long R_IRQ_MASK1_SET__pa0__BITNR ;
 unsigned long* R_PORT_G_DATA ;
 unsigned long* R_PORT_PA_DATA ;
 unsigned long* R_PORT_PB_DATA ;
 int gpio_lock ;
 unsigned long gpio_pa_irq_enabled_mask ;
 int poll_wait (struct file*,int *,int *) ;
 int printk (char*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int gpio_poll(struct file *file, poll_table *wait)
{
 unsigned int mask = 0;
 struct gpio_private *priv = file->private_data;
 unsigned long data;
 unsigned long flags;

 spin_lock_irqsave(&gpio_lock, flags);

 poll_wait(file, &priv->alarm_wq, wait);
 if (priv->minor == GPIO_MINOR_A) {
  unsigned long tmp;
  data = *R_PORT_PA_DATA;



  tmp = ~data & priv->highalarm & 0xFF;
  tmp = (tmp << R_IRQ_MASK1_SET__pa0__BITNR);

  gpio_pa_irq_enabled_mask |= tmp;
  *R_IRQ_MASK1_SET = tmp;
 } else if (priv->minor == GPIO_MINOR_B)
  data = *R_PORT_PB_DATA;
 else if (priv->minor == GPIO_MINOR_G)
  data = *R_PORT_G_DATA;
 else {
  mask = 0;
  goto out;
 }

 if ((data & priv->highalarm) ||
     (~data & priv->lowalarm)) {
  mask = POLLIN|POLLRDNORM;
 }

out:
 spin_unlock_irqrestore(&gpio_lock, flags);
 DP(printk("gpio_poll ready: mask 0x%08X\n", mask));

 return mask;
}
