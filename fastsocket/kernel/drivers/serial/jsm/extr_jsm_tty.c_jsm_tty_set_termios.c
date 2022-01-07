
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct ktermios {int * c_cc; int c_lflag; int c_oflag; int c_iflag; int c_cflag; } ;
struct jsm_channel {TYPE_2__* ch_bd; int ch_stopc; int ch_startc; int ch_c_lflag; int ch_c_oflag; int ch_c_iflag; int ch_c_cflag; } ;
struct TYPE_4__ {TYPE_1__* bd_ops; } ;
struct TYPE_3__ {int (* param ) (struct jsm_channel*) ;} ;


 size_t VSTART ;
 size_t VSTOP ;
 int jsm_carrier (struct jsm_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct jsm_channel*) ;

__attribute__((used)) static void jsm_tty_set_termios(struct uart_port *port,
     struct ktermios *termios,
     struct ktermios *old_termios)
{
 unsigned long lock_flags;
 struct jsm_channel *channel = (struct jsm_channel *)port;

 spin_lock_irqsave(&port->lock, lock_flags);
 channel->ch_c_cflag = termios->c_cflag;
 channel->ch_c_iflag = termios->c_iflag;
 channel->ch_c_oflag = termios->c_oflag;
 channel->ch_c_lflag = termios->c_lflag;
 channel->ch_startc = termios->c_cc[VSTART];
 channel->ch_stopc = termios->c_cc[VSTOP];

 channel->ch_bd->bd_ops->param(channel);
 jsm_carrier(channel);
 spin_unlock_irqrestore(&port->lock, lock_flags);
}
