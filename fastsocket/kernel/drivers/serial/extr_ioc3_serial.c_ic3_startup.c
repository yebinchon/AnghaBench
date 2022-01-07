
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct ioc3_port {struct uart_port* ip_port; struct ioc3_card* ip_card; } ;
struct ioc3_card {int dummy; } ;


 int ENODEV ;
 int NOT_PROGRESS () ;
 struct ioc3_port* get_ioc3_port (struct uart_port*) ;
 int ic3_startup_local (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ic3_startup(struct uart_port *the_port)
{
 int retval;
 struct ioc3_port *port;
 struct ioc3_card *card_ptr;
 unsigned long port_flags;

 if (!the_port) {
  NOT_PROGRESS();
  return -ENODEV;
 }
 port = get_ioc3_port(the_port);
 if (!port) {
  NOT_PROGRESS();
  return -ENODEV;
 }
 card_ptr = port->ip_card;
 port->ip_port = the_port;

 if (!card_ptr) {
  NOT_PROGRESS();
  return -ENODEV;
 }


 spin_lock_irqsave(&the_port->lock, port_flags);
 retval = ic3_startup_local(the_port);
 spin_unlock_irqrestore(&the_port->lock, port_flags);
 return retval;
}
