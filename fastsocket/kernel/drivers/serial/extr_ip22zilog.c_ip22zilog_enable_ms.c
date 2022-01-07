
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zilog_channel {int dummy; } ;
struct uart_port {int dummy; } ;
struct uart_ip22zilog_port {unsigned char* curregs; } ;


 unsigned char CTSIE ;
 unsigned char DCDIE ;
 size_t R15 ;
 unsigned char SYNCIE ;
 struct zilog_channel* ZILOG_CHANNEL_FROM_PORT (struct uart_port*) ;
 int write_zsreg (struct zilog_channel*,size_t,unsigned char) ;

__attribute__((used)) static void ip22zilog_enable_ms(struct uart_port *port)
{
 struct uart_ip22zilog_port *up = (struct uart_ip22zilog_port *) port;
 struct zilog_channel *channel = ZILOG_CHANNEL_FROM_PORT(port);
 unsigned char new_reg;

 new_reg = up->curregs[R15] | (DCDIE | SYNCIE | CTSIE);
 if (new_reg != up->curregs[R15]) {
  up->curregs[R15] = new_reg;


  write_zsreg(channel, R15, up->curregs[R15]);
 }
}
