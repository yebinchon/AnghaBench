
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zilog_channel {int dummy; } ;
struct uart_port {int lock; } ;
struct uart_ip22zilog_port {unsigned char* curregs; } ;


 size_t R5 ;
 unsigned char SND_BRK ;
 struct zilog_channel* ZILOG_CHANNEL_FROM_PORT (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_zsreg (struct zilog_channel*,size_t,unsigned char) ;

__attribute__((used)) static void ip22zilog_break_ctl(struct uart_port *port, int break_state)
{
 struct uart_ip22zilog_port *up = (struct uart_ip22zilog_port *) port;
 struct zilog_channel *channel = ZILOG_CHANNEL_FROM_PORT(port);
 unsigned char set_bits, clear_bits, new_reg;
 unsigned long flags;

 set_bits = clear_bits = 0;

 if (break_state)
  set_bits |= SND_BRK;
 else
  clear_bits |= SND_BRK;

 spin_lock_irqsave(&port->lock, flags);

 new_reg = (up->curregs[R5] | set_bits) & ~clear_bits;
 if (new_reg != up->curregs[R5]) {
  up->curregs[R5] = new_reg;


  write_zsreg(channel, R5, up->curregs[R5]);
 }

 spin_unlock_irqrestore(&port->lock, flags);
}
