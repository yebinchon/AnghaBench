
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct sbd_port {int dummy; } ;


 int M_DUART_CIN_CHNG_ENA ;
 int M_DUART_CTS_CHNG_ENA ;
 int R_DUART_AUXCTL_X ;
 struct sbd_port* to_sport (struct uart_port*) ;
 int write_sbdchn (struct sbd_port*,int ,int) ;

__attribute__((used)) static void sbd_enable_ms(struct uart_port *uport)
{
 struct sbd_port *sport = to_sport(uport);

 write_sbdchn(sport, R_DUART_AUXCTL_X,
       M_DUART_CIN_CHNG_ENA | M_DUART_CTS_CHNG_ENA);
}
