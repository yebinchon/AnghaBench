
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_private {int nr; scalar_t__* line; } ;


 int serial8250_suspend_port (scalar_t__) ;

void pciserial_suspend_ports(struct serial_private *priv)
{
 int i;

 for (i = 0; i < priv->nr; i++)
  if (priv->line[i] >= 0)
   serial8250_suspend_port(priv->line[i]);
}
