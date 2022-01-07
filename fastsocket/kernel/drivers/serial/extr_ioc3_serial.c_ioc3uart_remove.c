
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct ioc3_submodule {size_t id; } ;
struct ioc3_port {TYPE_2__* ic_port; int ip_dma_ringbuf; scalar_t__ ip_cpu_ringbuf; TYPE_1__* ip_idd; } ;
struct ioc3_driver_data {struct ioc3_port** data; } ;
struct ioc3_card {TYPE_2__* ic_port; int ip_dma_ringbuf; scalar_t__ ip_cpu_ringbuf; TYPE_1__* ip_idd; } ;
struct TYPE_4__ {struct ioc3_port* icp_port; struct uart_port* icp_uart_port; } ;
struct TYPE_3__ {int pdev; } ;


 size_t GET_LOGICAL_PORT (int) ;
 size_t GET_PHYSICAL_PORT (int) ;
 scalar_t__ IS_PHYSICAL_PORT (int) ;
 int LOGICAL_PORTS_PER_CARD ;
 int TOTAL_RING_BUF_SIZE ;
 int ioc3_uart ;
 int kfree (struct ioc3_port*) ;
 int pci_free_consistent (int ,int ,void*,int ) ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int ioc3uart_remove(struct ioc3_submodule *is,
   struct ioc3_driver_data *idd)
{
 struct ioc3_card *card_ptr = idd->data[is->id];
 struct uart_port *the_port;
 struct ioc3_port *port;
 int ii;

 if (card_ptr) {
  for (ii = 0; ii < LOGICAL_PORTS_PER_CARD; ii++) {
   the_port = &card_ptr->ic_port[GET_PHYSICAL_PORT(ii)].
     icp_uart_port[GET_LOGICAL_PORT(ii)];
   if (the_port)
    uart_remove_one_port(&ioc3_uart, the_port);
   port = card_ptr->ic_port[GET_PHYSICAL_PORT(ii)].icp_port;
   if (port && IS_PHYSICAL_PORT(ii)
     && (GET_PHYSICAL_PORT(ii) == 0)) {
    pci_free_consistent(port->ip_idd->pdev,
     TOTAL_RING_BUF_SIZE,
     (void *)port->ip_cpu_ringbuf,
     port->ip_dma_ringbuf);
    kfree(port);
    card_ptr->ic_port[GET_PHYSICAL_PORT(ii)].
       icp_port = ((void*)0);
   }
  }
  kfree(card_ptr);
  idd->data[is->id] = ((void*)0);
 }
 return 0;
}
