
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; int irq; } ;


 int IRQF_SAMPLE_RANDOM ;
 int IRQF_SHARED ;
 scalar_t__ ULITE_CONTROL ;
 int ULITE_CONTROL_IE ;
 int ULITE_CONTROL_RST_RX ;
 int ULITE_CONTROL_RST_TX ;
 int request_irq (int ,int ,int,char*,struct uart_port*) ;
 int ulite_isr ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int ulite_startup(struct uart_port *port)
{
 int ret;

 ret = request_irq(port->irq, ulite_isr,
     IRQF_SHARED | IRQF_SAMPLE_RANDOM, "uartlite", port);
 if (ret)
  return ret;

 writeb(ULITE_CONTROL_RST_RX | ULITE_CONTROL_RST_TX,
        port->membase + ULITE_CONTROL);
 writeb(ULITE_CONTROL_IE, port->membase + ULITE_CONTROL);

 return 0;
}
