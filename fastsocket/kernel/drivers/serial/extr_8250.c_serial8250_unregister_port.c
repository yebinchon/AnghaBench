
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t type; int * dev; int flags; } ;
struct uart_8250_port {TYPE_1__ port; int capabilities; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int flags; } ;


 size_t PORT_UNKNOWN ;
 int UPF_BOOT_AUTOCONF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_4__* serial8250_isa_devs ;
 struct uart_8250_port* serial8250_ports ;
 int serial8250_reg ;
 int serial_mutex ;
 int uart_add_one_port (int *,TYPE_1__*) ;
 TYPE_2__* uart_config ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

void serial8250_unregister_port(int line)
{
 struct uart_8250_port *uart = &serial8250_ports[line];

 mutex_lock(&serial_mutex);
 uart_remove_one_port(&serial8250_reg, &uart->port);
 if (serial8250_isa_devs) {
  uart->port.flags &= ~UPF_BOOT_AUTOCONF;
  uart->port.type = PORT_UNKNOWN;
  uart->port.dev = &serial8250_isa_devs->dev;
  uart->capabilities = uart_config[uart->port.type].flags;
  uart_add_one_port(&serial8250_reg, &uart->port);
 } else {
  uart->port.dev = ((void*)0);
 }
 mutex_unlock(&serial_mutex);
}
