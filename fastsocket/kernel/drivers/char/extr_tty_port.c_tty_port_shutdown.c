
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {TYPE_1__* ops; int flags; } ;
struct TYPE_2__ {int (* shutdown ) (struct tty_port*) ;} ;


 int ASYNCB_INITIALIZED ;
 int stub1 (struct tty_port*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void tty_port_shutdown(struct tty_port *port)
{
 if (port->ops->shutdown &&
  test_and_clear_bit(ASYNCB_INITIALIZED, &port->flags))
   port->ops->shutdown(port);

}
