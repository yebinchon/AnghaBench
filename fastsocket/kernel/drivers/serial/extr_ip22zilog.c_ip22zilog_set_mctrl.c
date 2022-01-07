
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zilog_channel {int dummy; } ;
struct uart_port {int dummy; } ;
struct uart_ip22zilog_port {unsigned char* curregs; } ;


 unsigned char DTR ;
 size_t R5 ;
 unsigned char RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 struct zilog_channel* ZILOG_CHANNEL_FROM_PORT (struct uart_port*) ;
 int write_zsreg (struct zilog_channel*,size_t,unsigned char) ;

__attribute__((used)) static void ip22zilog_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct uart_ip22zilog_port *up = (struct uart_ip22zilog_port *) port;
 struct zilog_channel *channel = ZILOG_CHANNEL_FROM_PORT(port);
 unsigned char set_bits, clear_bits;

 set_bits = clear_bits = 0;

 if (mctrl & TIOCM_RTS)
  set_bits |= RTS;
 else
  clear_bits |= RTS;
 if (mctrl & TIOCM_DTR)
  set_bits |= DTR;
 else
  clear_bits |= DTR;


 up->curregs[R5] |= set_bits;
 up->curregs[R5] &= ~clear_bits;
 write_zsreg(channel, R5, up->curregs[R5]);
}
