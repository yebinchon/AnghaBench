
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct i8042_port* port_data; } ;
struct i8042_port {int exists; } ;


 int mb () ;

__attribute__((used)) static int i8042_start(struct serio *serio)
{
 struct i8042_port *port = serio->port_data;

 port->exists = 1;
 mb();
 return 0;
}
