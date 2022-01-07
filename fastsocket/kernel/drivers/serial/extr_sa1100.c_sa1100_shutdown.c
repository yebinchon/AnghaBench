
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int irq; } ;
struct sa1100_port {TYPE_1__ port; int timer; } ;


 int UART_PUT_UTCR3 (struct sa1100_port*,int ) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct sa1100_port*) ;

__attribute__((used)) static void sa1100_shutdown(struct uart_port *port)
{
 struct sa1100_port *sport = (struct sa1100_port *)port;




 del_timer_sync(&sport->timer);




 free_irq(sport->port.irq, sport);




 UART_PUT_UTCR3(sport, 0);
}
