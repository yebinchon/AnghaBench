
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a2232_port {int disable_rx; } ;



__attribute__((used)) static void a2232_disable_rx_interrupts(void *ptr)
{
 struct a2232_port *port;
 port = ptr;
 port->disable_rx = -1;
}
