
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct serial_struct {scalar_t__ irq; int baud_base; scalar_t__ type; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int EINVAL ;
 scalar_t__ PORT_UNKNOWN ;
 scalar_t__ nr_irqs ;
 int uart_config ;

__attribute__((used)) static int
m32r_sio_verify_port(struct uart_port *port, struct serial_struct *ser)
{
 if (ser->irq >= nr_irqs || ser->irq < 0 ||
     ser->baud_base < 9600 || ser->type < PORT_UNKNOWN ||
     ser->type >= ARRAY_SIZE(uart_config))
  return -EINVAL;
 return 0;
}
