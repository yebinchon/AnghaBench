
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; } ;
struct pcmcia_device {int dummy; } ;



__attribute__((used)) static void quirk_setup_brainboxes_0104(struct pcmcia_device *link, struct uart_port *port)
{
 port->uartclk = 14745600;
}
