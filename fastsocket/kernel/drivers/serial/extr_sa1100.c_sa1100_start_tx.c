
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int read_status_mask; } ;
struct sa1100_port {TYPE_1__ port; } ;


 int UART_GET_UTCR3 (struct sa1100_port*) ;
 int UART_PUT_UTCR3 (struct sa1100_port*,int) ;
 int UTCR3_TIE ;
 int UTSR0_TFS ;
 int UTSR0_TO_SM (int ) ;

__attribute__((used)) static void sa1100_start_tx(struct uart_port *port)
{
 struct sa1100_port *sport = (struct sa1100_port *)port;
 u32 utcr3;

 utcr3 = UART_GET_UTCR3(sport);
 sport->port.read_status_mask |= UTSR0_TO_SM(UTSR0_TFS);
 UART_PUT_UTCR3(sport, utcr3 | UTCR3_TIE);
}
