
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zilog_channel {int dummy; } ;
struct uart_ip22zilog_port {int flags; TYPE_1__* next; int port; } ;
struct TYPE_2__ {int flags; } ;


 unsigned char ALL_SNT ;
 int FHWRES ;
 int IP22ZILOG_FLAG_RESET_DONE ;
 int R0 ;
 int R1 ;
 int R9 ;
 struct zilog_channel* ZILOG_CHANNEL_FROM_PORT (int *) ;
 int ZSDELAY_LONG () ;
 int ZS_IS_CHANNEL_A (struct uart_ip22zilog_port*) ;
 unsigned char read_zsreg (struct zilog_channel*,int ) ;
 int udelay (int) ;
 int write_zsreg (struct zilog_channel*,int ,int ) ;

__attribute__((used)) static void __ip22zilog_reset(struct uart_ip22zilog_port *up)
{
 struct zilog_channel *channel;
 int i;

 if (up->flags & IP22ZILOG_FLAG_RESET_DONE)
  return;


 channel = ZILOG_CHANNEL_FROM_PORT(&up->port);
 for (i = 0; i < 1000; i++) {
  unsigned char stat = read_zsreg(channel, R1);
  if (stat & ALL_SNT)
   break;
  udelay(100);
 }

 if (!ZS_IS_CHANNEL_A(up)) {
  up++;
  channel = ZILOG_CHANNEL_FROM_PORT(&up->port);
 }
 write_zsreg(channel, R9, FHWRES);
 ZSDELAY_LONG();
 (void) read_zsreg(channel, R0);

 up->flags |= IP22ZILOG_FLAG_RESET_DONE;
 up->next->flags |= IP22ZILOG_FLAG_RESET_DONE;
}
