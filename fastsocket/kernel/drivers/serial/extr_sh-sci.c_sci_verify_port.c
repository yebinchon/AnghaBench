
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct serial_struct {scalar_t__ irq; int baud_base; } ;
struct sci_port {scalar_t__* irqs; } ;


 int EINVAL ;
 size_t SCIx_TXI_IRQ ;
 scalar_t__ nr_irqs ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static int sci_verify_port(struct uart_port *port, struct serial_struct *ser)
{
 struct sci_port *s = to_sci_port(port);

 if (ser->irq != s->irqs[SCIx_TXI_IRQ] || ser->irq > nr_irqs)
  return -EINVAL;
 if (ser->baud_base < 2400)

  return -EINVAL;

 return 0;
}
