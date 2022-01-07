
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int buf; } ;
struct bfin_serial_port {scalar_t__ cts_pin; scalar_t__ rts_pin; int status_irq; TYPE_2__ port; TYPE_1__ rx_dma_buf; int rx_dma_timer; int rx_dma_channel; int tx_dma_channel; } ;


 int CH_UART2_RX ;
 int CH_UART2_TX ;
 int CH_UART3_RX ;
 int CH_UART3_TX ;
 scalar_t__ EDSSI ;


 int PAGE_SIZE ;
 scalar_t__ UART_GET_IER (struct bfin_serial_port*) ;
 int del_timer (int *) ;
 int disable_dma (int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int free_dma (int ) ;
 int free_irq (int,struct bfin_serial_port*) ;
 int gpio_free (scalar_t__) ;
 int gpio_to_irq (scalar_t__) ;

__attribute__((used)) static void bfin_serial_shutdown(struct uart_port *port)
{
 struct bfin_serial_port *uart = (struct bfin_serial_port *)port;
 free_irq(uart->port.irq, uart);
 free_irq(uart->port.irq+1, uart);
}
