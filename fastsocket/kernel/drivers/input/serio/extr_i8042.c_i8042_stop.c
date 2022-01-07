
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct i8042_port* port_data; } ;
struct i8042_port {int exists; int * serio; } ;


 int I8042_AUX_IRQ ;
 int I8042_KBD_IRQ ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void i8042_stop(struct serio *serio)
{
 struct i8042_port *port = serio->port_data;

 port->exists = 0;






 synchronize_irq(I8042_AUX_IRQ);
 synchronize_irq(I8042_KBD_IRQ);
 port->serio = ((void*)0);
}
