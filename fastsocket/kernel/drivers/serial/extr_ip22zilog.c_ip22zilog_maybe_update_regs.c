
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zilog_channel {int dummy; } ;
struct uart_ip22zilog_port {int curregs; int flags; } ;


 int IP22ZILOG_FLAG_REGS_HELD ;
 int ZS_REGS_HELD (struct uart_ip22zilog_port*) ;
 scalar_t__ ZS_TX_ACTIVE (struct uart_ip22zilog_port*) ;
 int __load_zsregs (struct zilog_channel*,int ) ;

__attribute__((used)) static void ip22zilog_maybe_update_regs(struct uart_ip22zilog_port *up,
           struct zilog_channel *channel)
{
 if (!ZS_REGS_HELD(up)) {
  if (ZS_TX_ACTIVE(up)) {
   up->flags |= IP22ZILOG_FLAG_REGS_HELD;
  } else {
   __load_zsregs(channel, up->curregs);
  }
 }
}
