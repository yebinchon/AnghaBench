
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_private {size_t minor; } ;


 size_t GPIO_MINOR_A ;
 size_t GPIO_MINOR_V ;
 unsigned long* changeable_dir ;
 unsigned long** dir_oe ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

inline unsigned long setget_input(struct gpio_private *priv, unsigned long arg)
{



 unsigned long flags;
 unsigned long dir_shadow;

 local_irq_save(flags);
 dir_shadow = *dir_oe[priv->minor];
 dir_shadow &= ~(arg & changeable_dir[priv->minor]);
 *dir_oe[priv->minor] = dir_shadow;
 local_irq_restore(flags);

 if (priv->minor == GPIO_MINOR_A)
  dir_shadow ^= 0xFF;




 else
  dir_shadow ^= 0x3FFFF;
 return dir_shadow;

}
