
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uart_port {scalar_t__ uartclk; int flags; size_t type; scalar_t__ serial_out; scalar_t__ serial_in; scalar_t__ dev; int private_data; int mapbase; int iotype; int regshift; int fifosize; int irqflags; int irq; int membase; int iobase; } ;
struct TYPE_5__ {scalar_t__ uartclk; int flags; size_t type; int line; scalar_t__ serial_out; scalar_t__ serial_in; int fifosize; scalar_t__ dev; int private_data; int mapbase; int iotype; int regshift; int irqflags; int irq; int membase; int iobase; } ;
struct uart_8250_port {TYPE_1__ port; int tx_loadsz; int capabilities; } ;
struct TYPE_6__ {int tx_loadsz; int flags; int fifo_size; } ;


 int EINVAL ;
 int ENOSPC ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_FIXED_TYPE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct uart_8250_port* serial8250_find_match_or_unused (struct uart_port*) ;
 int serial8250_reg ;
 int serial_mutex ;
 int set_io_from_upio (TYPE_1__*) ;
 int uart_add_one_port (int *,TYPE_1__*) ;
 TYPE_2__* uart_config ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

int serial8250_register_port(struct uart_port *port)
{
 struct uart_8250_port *uart;
 int ret = -ENOSPC;

 if (port->uartclk == 0)
  return -EINVAL;

 mutex_lock(&serial_mutex);

 uart = serial8250_find_match_or_unused(port);
 if (uart) {
  uart_remove_one_port(&serial8250_reg, &uart->port);

  uart->port.iobase = port->iobase;
  uart->port.membase = port->membase;
  uart->port.irq = port->irq;
  uart->port.irqflags = port->irqflags;
  uart->port.uartclk = port->uartclk;
  uart->port.fifosize = port->fifosize;
  uart->port.regshift = port->regshift;
  uart->port.iotype = port->iotype;
  uart->port.flags = port->flags | UPF_BOOT_AUTOCONF;
  uart->port.mapbase = port->mapbase;
  uart->port.private_data = port->private_data;
  if (port->dev)
   uart->port.dev = port->dev;

  if (port->flags & UPF_FIXED_TYPE) {
   uart->port.type = port->type;
   uart->port.fifosize = uart_config[port->type].fifo_size;
   uart->capabilities = uart_config[port->type].flags;
   uart->tx_loadsz = uart_config[port->type].tx_loadsz;
  }

  set_io_from_upio(&uart->port);

  if (port->serial_in)
   uart->port.serial_in = port->serial_in;
  if (port->serial_out)
   uart->port.serial_out = port->serial_out;

  ret = uart_add_one_port(&serial8250_reg, &uart->port);
  if (ret == 0)
   ret = uart->port.line;
 }
 mutex_unlock(&serial_mutex);

 return ret;
}
