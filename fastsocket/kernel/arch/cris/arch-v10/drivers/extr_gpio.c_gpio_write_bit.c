
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_private {int* port; int clk_mask; int * shadow; int data_mask; } ;



__attribute__((used)) static void gpio_write_bit(struct gpio_private *priv,
 unsigned char data, int bit)
{
 *priv->port = *priv->shadow &= ~(priv->clk_mask);
 if (data & 1 << bit)
  *priv->port = *priv->shadow |= priv->data_mask;
 else
  *priv->port = *priv->shadow &= ~(priv->data_mask);


 *priv->port = *priv->shadow |= priv->clk_mask;
}
