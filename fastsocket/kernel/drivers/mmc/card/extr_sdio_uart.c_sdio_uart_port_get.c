
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {int kref; } ;


 unsigned int UART_NR ;
 int kref_get (int *) ;
 struct sdio_uart_port** sdio_uart_table ;
 int sdio_uart_table_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct sdio_uart_port *sdio_uart_port_get(unsigned index)
{
 struct sdio_uart_port *port;

 if (index >= UART_NR)
  return ((void*)0);

 spin_lock(&sdio_uart_table_lock);
 port = sdio_uart_table[index];
 if (port)
  kref_get(&port->kref);
 spin_unlock(&sdio_uart_table_lock);

 return port;
}
