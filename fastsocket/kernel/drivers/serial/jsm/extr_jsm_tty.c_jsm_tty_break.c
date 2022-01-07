
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct jsm_channel {TYPE_2__* ch_bd; } ;
struct TYPE_4__ {TYPE_1__* bd_ops; } ;
struct TYPE_3__ {int (* clear_break ) (struct jsm_channel*,int ) ;int (* send_break ) (struct jsm_channel*) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct jsm_channel*) ;
 int stub2 (struct jsm_channel*,int ) ;

__attribute__((used)) static void jsm_tty_break(struct uart_port *port, int break_state)
{
 unsigned long lock_flags;
 struct jsm_channel *channel = (struct jsm_channel *)port;

 spin_lock_irqsave(&port->lock, lock_flags);
 if (break_state == -1)
  channel->ch_bd->bd_ops->send_break(channel);
 else
  channel->ch_bd->bd_ops->clear_break(channel, 0);

 spin_unlock_irqrestore(&port->lock, lock_flags);
}
