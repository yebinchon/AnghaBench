
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_private {int data_mask; int clk_mask; scalar_t__ write_msb; } ;


 int gpio_write_bit (unsigned long*,unsigned char,int,int ,int ) ;

__attribute__((used)) static void gpio_write_byte(struct gpio_private *priv, unsigned long *port,
  unsigned char data)
{
 int i;

 if (priv->write_msb)
  for (i = 7; i >= 0; i--)
   gpio_write_bit(port, data, i, priv->clk_mask,
    priv->data_mask);
 else
  for (i = 0; i <= 7; i++)
   gpio_write_bit(port, data, i, priv->clk_mask,
    priv->data_mask);
}
