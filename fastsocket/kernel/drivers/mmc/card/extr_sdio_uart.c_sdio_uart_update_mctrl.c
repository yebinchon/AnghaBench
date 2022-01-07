
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {unsigned int mctrl; } ;


 int sdio_uart_write_mctrl (struct sdio_uart_port*,unsigned int) ;

__attribute__((used)) static inline void sdio_uart_update_mctrl(struct sdio_uart_port *port,
       unsigned int set, unsigned int clear)
{
 unsigned int old;

 old = port->mctrl;
 port->mctrl = (old & ~clear) | set;
 if (old != port->mctrl)
  sdio_uart_write_mctrl(port, port->mctrl);
}
