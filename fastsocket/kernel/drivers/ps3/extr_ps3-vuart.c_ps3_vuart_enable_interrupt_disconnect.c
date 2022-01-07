
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_vuart_port_priv {int interrupt_mask; } ;
struct ps3_system_bus_device {int dummy; } ;


 int INTERRUPT_MASK_DISCONNECT ;
 int ps3_vuart_set_interrupt_mask (struct ps3_system_bus_device*,int) ;
 struct ps3_vuart_port_priv* to_port_priv (struct ps3_system_bus_device*) ;

int ps3_vuart_enable_interrupt_disconnect(struct ps3_system_bus_device *dev)
{
 struct ps3_vuart_port_priv *priv = to_port_priv(dev);

 return (priv->interrupt_mask & INTERRUPT_MASK_DISCONNECT) ? 0
  : ps3_vuart_set_interrupt_mask(dev, priv->interrupt_mask
  | INTERRUPT_MASK_DISCONNECT);
}
