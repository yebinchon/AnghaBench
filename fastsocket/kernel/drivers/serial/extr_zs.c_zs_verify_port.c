
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_port {int clk_mode; } ;
struct uart_port {scalar_t__ irq; int uartclk; } ;
struct serial_struct {scalar_t__ type; scalar_t__ irq; int baud_base; } ;


 int EINVAL ;
 scalar_t__ PORT_UNKNOWN ;
 scalar_t__ PORT_ZS ;
 struct zs_port* to_zport (struct uart_port*) ;

__attribute__((used)) static int zs_verify_port(struct uart_port *uport, struct serial_struct *ser)
{
 struct zs_port *zport = to_zport(uport);
 int ret = 0;

 if (ser->type != PORT_UNKNOWN && ser->type != PORT_ZS)
  ret = -EINVAL;
 if (ser->irq != uport->irq)
  ret = -EINVAL;
 if (ser->baud_base != uport->uartclk / zport->clk_mode / 4)
  ret = -EINVAL;
 return ret;
}
