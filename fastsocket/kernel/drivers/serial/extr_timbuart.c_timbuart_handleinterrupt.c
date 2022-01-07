
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct timbuart_port {int tasklet; TYPE_1__ port; int last_ier; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ TIMBUART_IER ;
 scalar_t__ TIMBUART_IPR ;
 int ioread32 (scalar_t__) ;
 scalar_t__ ioread8 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t timbuart_handleinterrupt(int irq, void *devid)
{
 struct timbuart_port *uart = (struct timbuart_port *)devid;

 if (ioread8(uart->port.membase + TIMBUART_IPR)) {
  uart->last_ier = ioread32(uart->port.membase + TIMBUART_IER);


  iowrite32(0, uart->port.membase + TIMBUART_IER);


  tasklet_schedule(&uart->tasklet);

  return IRQ_HANDLED;
 } else
  return IRQ_NONE;
}
