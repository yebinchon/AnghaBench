
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct sa1100_port {int timer; } ;


 int jiffies ;
 int mod_timer (int *,int ) ;

__attribute__((used)) static void sa1100_enable_ms(struct uart_port *port)
{
 struct sa1100_port *sport = (struct sa1100_port *)port;

 mod_timer(&sport->timer, jiffies);
}
