
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunsab_port {int irqflags; } ;
struct uart_port {int dummy; } ;


 int SAB82532_ALLS ;
 int TIOCSER_TEMT ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static unsigned int sunsab_tx_empty(struct uart_port *port)
{
 struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;
 int ret;


 if (test_bit(SAB82532_ALLS, &up->irqflags))
  ret = TIOCSER_TEMT;
 else
  ret = 0;

 return ret;
}
