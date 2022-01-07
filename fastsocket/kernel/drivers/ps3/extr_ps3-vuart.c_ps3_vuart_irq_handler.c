
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vuart_bus_priv {int * devices; TYPE_1__* bmp; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int status; } ;


 int BITS_PER_LONG ;
 int BUG_ON (int) ;
 int IRQ_HANDLED ;
 unsigned int PORT_COUNT ;
 int __ilog2 (int ) ;
 int dump_ports_bmp (TYPE_1__*) ;
 int ps3_vuart_handle_port_interrupt (int ) ;

__attribute__((used)) static irqreturn_t ps3_vuart_irq_handler(int irq, void *_private)
{
 struct vuart_bus_priv *bus_priv = _private;

 BUG_ON(!bus_priv);

 while (1) {
  unsigned int port;

  dump_ports_bmp(bus_priv->bmp);

  port = (BITS_PER_LONG - 1) - __ilog2(bus_priv->bmp->status);

  if (port == BITS_PER_LONG)
   break;

  BUG_ON(port >= PORT_COUNT);
  BUG_ON(!bus_priv->devices[port]);

  ps3_vuart_handle_port_interrupt(bus_priv->devices[port]);
 }

 return IRQ_HANDLED;
}
