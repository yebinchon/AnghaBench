
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_private {size_t minor; } ;


 unsigned long* changeable_dir ;
 unsigned long** dir_oe ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

inline unsigned long setget_output(struct gpio_private *priv, unsigned long arg)
{
 unsigned long flags;
 unsigned long dir_shadow;

 local_irq_save(flags);
 dir_shadow = *dir_oe[priv->minor];
 dir_shadow |= (arg & changeable_dir[priv->minor]);
 *dir_oe[priv->minor] = dir_shadow;
 local_irq_restore(flags);
 return dir_shadow;
}
