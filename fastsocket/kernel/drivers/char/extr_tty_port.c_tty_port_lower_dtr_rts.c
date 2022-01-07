
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dtr_rts ) (struct tty_port*,int ) ;} ;


 int stub1 (struct tty_port*,int ) ;

void tty_port_lower_dtr_rts(struct tty_port *port)
{
 if (port->ops->dtr_rts)
  port->ops->dtr_rts(port, 0);
}
