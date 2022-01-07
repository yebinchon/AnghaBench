
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct jsm_channel {TYPE_2__* ch_bd; } ;
struct TYPE_4__ {TYPE_1__* bd_ops; } ;
struct TYPE_3__ {int (* disable_receiver ) (struct jsm_channel*) ;} ;


 int stub1 (struct jsm_channel*) ;

__attribute__((used)) static void jsm_tty_stop_rx(struct uart_port *port)
{
 struct jsm_channel *channel = (struct jsm_channel *)port;

 channel->ch_bd->bd_ops->disable_receiver(channel);
}
