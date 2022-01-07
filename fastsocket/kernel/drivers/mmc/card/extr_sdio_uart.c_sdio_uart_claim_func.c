
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {scalar_t__ in_sdio_uart_irq; int func_lock; int func; } ;


 int ENODEV ;
 scalar_t__ current ;
 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdio_claim_host (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sdio_uart_claim_func(struct sdio_uart_port *port)
{
 mutex_lock(&port->func_lock);
 if (unlikely(!port->func)) {
  mutex_unlock(&port->func_lock);
  return -ENODEV;
 }
 if (likely(port->in_sdio_uart_irq != current))
  sdio_claim_host(port->func);
 mutex_unlock(&port->func_lock);
 return 0;
}
