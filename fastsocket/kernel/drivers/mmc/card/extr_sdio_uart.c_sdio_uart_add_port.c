
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {int index; int write_lock; int func_lock; int open_lock; int kref; } ;


 int EBUSY ;
 int UART_NR ;
 int kref_init (int *) ;
 int mutex_init (int *) ;
 struct sdio_uart_port** sdio_uart_table ;
 int sdio_uart_table_lock ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int sdio_uart_add_port(struct sdio_uart_port *port)
{
 int index, ret = -EBUSY;

 kref_init(&port->kref);
 mutex_init(&port->open_lock);
 mutex_init(&port->func_lock);
 spin_lock_init(&port->write_lock);

 spin_lock(&sdio_uart_table_lock);
 for (index = 0; index < UART_NR; index++) {
  if (!sdio_uart_table[index]) {
   port->index = index;
   sdio_uart_table[index] = port;
   ret = 0;
   break;
  }
 }
 spin_unlock(&sdio_uart_table_lock);

 return ret;
}
