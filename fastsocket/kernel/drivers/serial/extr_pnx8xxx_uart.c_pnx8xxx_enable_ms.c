
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct pnx8xxx_port {int timer; } ;


 int jiffies ;
 int mod_timer (int *,int ) ;

__attribute__((used)) static void pnx8xxx_enable_ms(struct uart_port *port)
{
 struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;

 mod_timer(&sport->timer, jiffies);
}
