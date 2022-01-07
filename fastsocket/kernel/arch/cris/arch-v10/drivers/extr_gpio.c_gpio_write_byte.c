
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_private {scalar_t__ write_msb; } ;


 int gpio_write_bit (struct gpio_private*,unsigned char,int) ;

__attribute__((used)) static void gpio_write_byte(struct gpio_private *priv, unsigned char data)
{
 int i;

 if (priv->write_msb)
  for (i = 7; i >= 0; i--)
   gpio_write_bit(priv, data, i);
 else
  for (i = 0; i <= 7; i++)
   gpio_write_bit(priv, data, i);
}
