
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioc3_port {TYPE_1__* ip_port; } ;
struct TYPE_2__ {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transmit_chars (TYPE_1__*) ;

__attribute__((used)) static void ioc3_cb_output_lowat(struct ioc3_port *port)
{
 unsigned long pflags;


 if (port->ip_port) {
  spin_lock_irqsave(&port->ip_port->lock, pflags);
  transmit_chars(port->ip_port);
  spin_unlock_irqrestore(&port->ip_port->lock, pflags);
 }
}
