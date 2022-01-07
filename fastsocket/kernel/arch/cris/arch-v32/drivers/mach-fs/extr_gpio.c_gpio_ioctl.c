
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct inode {int dummy; } ;
struct gpio_private {scalar_t__ minor; unsigned long highalarm; unsigned long lowalarm; unsigned long clk_mask; unsigned long data_mask; unsigned long write_msb; } ;
struct file {scalar_t__ private_data; } ;


 int EFAULT ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ ETRAXGPIO_IOCTYPE ;
 size_t GPIO_MINOR_A ;
 size_t GPIO_MINOR_LEDS ;
 scalar_t__ GPIO_MINOR_V ;
 int _IOC_NR (unsigned int) ;
 scalar_t__ _IOC_TYPE (unsigned int) ;
 int alarm_lock ;
 unsigned long* changeable_bits ;
 int copy_from_user (unsigned long*,unsigned long*,int) ;
 int copy_to_user (unsigned long*,unsigned long*,int) ;
 int** data_in ;
 unsigned long** data_out ;
 int** dir_oe ;
 int gpio_leds_ioctl (unsigned int,unsigned long) ;
 unsigned long gpio_pa_high_alarms ;
 unsigned long gpio_pa_low_alarms ;
 int gpio_some_alarms ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int setget_input (struct gpio_private*,unsigned long) ;
 int setget_output (struct gpio_private*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtual_gpio_ioctl (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static int
gpio_ioctl(struct inode *inode, struct file *file,
    unsigned int cmd, unsigned long arg)
{
 unsigned long flags;
 unsigned long val;
 unsigned long shadow;
 struct gpio_private *priv = (struct gpio_private *)file->private_data;
 if (_IOC_TYPE(cmd) != ETRAXGPIO_IOCTYPE)
  return -EINVAL;






 switch (_IOC_NR(cmd)) {
 case 136:

  return *data_in[priv->minor];
  break;
 case 132:
  local_irq_save(flags);

  shadow = *data_out[priv->minor];
  shadow |= (arg & changeable_bits[priv->minor]);
  *data_out[priv->minor] = shadow;
  local_irq_restore(flags);
  break;
 case 139:
  local_irq_save(flags);

  shadow = *data_out[priv->minor];
  shadow &= ~(arg & changeable_bits[priv->minor]);
  *data_out[priv->minor] = shadow;
  local_irq_restore(flags);
  break;
 case 138:

  priv->highalarm |= arg;
  spin_lock_irqsave(&alarm_lock, flags);
  gpio_some_alarms = 1;
  if (priv->minor == GPIO_MINOR_A)
   gpio_pa_high_alarms |= arg;
  spin_unlock_irqrestore(&alarm_lock, flags);
  break;
 case 137:

  priv->lowalarm |= arg;
  spin_lock_irqsave(&alarm_lock, flags);
  gpio_some_alarms = 1;
  if (priv->minor == GPIO_MINOR_A)
   gpio_pa_low_alarms |= arg;
  spin_unlock_irqrestore(&alarm_lock, flags);
  break;
 case 140:

  priv->highalarm &= ~arg;
  priv->lowalarm &= ~arg;
  spin_lock_irqsave(&alarm_lock, flags);
  if (priv->minor == GPIO_MINOR_A) {
   if (gpio_pa_high_alarms & arg ||
       gpio_pa_low_alarms & arg)

    ;
  }
  spin_unlock_irqrestore(&alarm_lock, flags);
  break;
 case 135:

  return *dir_oe[priv->minor];
 case 129:



  return setget_input(priv, arg);
  break;
 case 128:



  return setget_output(priv, arg);

 case 141:
 {
  unsigned long dir_shadow;
  dir_shadow = *dir_oe[priv->minor];

  priv->clk_mask = arg & 0xFF;
  priv->data_mask = (arg >> 8) & 0xFF;
  priv->write_msb = (arg >> 16) & 0x01;



  if (!((priv->clk_mask & changeable_bits[priv->minor]) &&
        (priv->data_mask & changeable_bits[priv->minor]) &&
        (priv->clk_mask & dir_shadow) &&
        (priv->data_mask & dir_shadow))) {
   priv->clk_mask = 0;
   priv->data_mask = 0;
   return -EPERM;
  }
  break;
 }
 case 134:

  val = *data_in[priv->minor];
  if (copy_to_user((unsigned long *)arg, &val, sizeof(val)))
   return -EFAULT;
  return 0;
  break;
 case 133:

  val = *data_out[priv->minor];
  if (copy_to_user((unsigned long *)arg, &val, sizeof(val)))
   return -EFAULT;
  break;
 case 131:



  if (copy_from_user(&val, (unsigned long *)arg, sizeof(val)))
   return -EFAULT;
  val = setget_input(priv, val);
  if (copy_to_user((unsigned long *)arg, &val, sizeof(val)))
   return -EFAULT;
  break;
 case 130:



  if (copy_from_user(&val, (unsigned long *)arg, sizeof(val)))
   return -EFAULT;
  val = setget_output(priv, val);
  if (copy_to_user((unsigned long *)arg, &val, sizeof(val)))
   return -EFAULT;
  break;
 default:
  if (priv->minor == GPIO_MINOR_LEDS)
   return gpio_leds_ioctl(cmd, arg);
  else
   return -EINVAL;
 }

 return 0;
}
