
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct ioc4_soft {scalar_t__ is_ioc4_serial_addr; int ic_irq; struct ioc4_soft* ic_soft; int ip_dma_ringbuf; int ip_cpu_ringbuf; int ip_pdev; TYPE_1__* ic_port; } ;
struct ioc4_serial {int dummy; } ;
struct ioc4_port {scalar_t__ is_ioc4_serial_addr; int ic_irq; struct ioc4_port* ic_soft; int ip_dma_ringbuf; int ip_cpu_ringbuf; int ip_pdev; TYPE_1__* ic_port; } ;
struct ioc4_driver_data {struct ioc4_soft* idd_serial_data; } ;
struct ioc4_control {scalar_t__ is_ioc4_serial_addr; int ic_irq; struct ioc4_control* ic_soft; int ip_dma_ringbuf; int ip_cpu_ringbuf; int ip_pdev; TYPE_1__* ic_port; } ;
struct TYPE_2__ {struct ioc4_soft* icp_port; struct uart_port* icp_uart_port; } ;


 int IOC4_NUM_SERIAL_PORTS ;
 int TOTAL_RING_BUF_SIZE ;
 int UART_PORT_COUNT ;
 int UART_PORT_MIN ;


 int free_irq (int ,struct ioc4_soft*) ;
 int ioc4_uart_rs232 ;
 int ioc4_uart_rs422 ;
 int iounmap (scalar_t__) ;
 int kfree (struct ioc4_soft*) ;
 int pci_free_consistent (int ,int ,int ,int ) ;
 int release_mem_region (unsigned long,int) ;
 int uart_remove_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int ioc4_serial_remove_one(struct ioc4_driver_data *idd)
{
 int port_num, port_type;
 struct ioc4_control *control;
 struct uart_port *the_port;
 struct ioc4_port *port;
 struct ioc4_soft *soft;


 control = idd->idd_serial_data;
 if (!control)
  return 0;

 for (port_num = 0; port_num < IOC4_NUM_SERIAL_PORTS; port_num++) {
  for (port_type = UART_PORT_MIN;
     port_type < UART_PORT_COUNT;
     port_type++) {
   the_port = &control->ic_port[port_num].icp_uart_port
       [port_type];
   if (the_port) {
    switch (port_type) {
    case 128:
     uart_remove_one_port(&ioc4_uart_rs422,
       the_port);
     break;
    default:
    case 129:
     uart_remove_one_port(&ioc4_uart_rs232,
       the_port);
     break;
    }
   }
  }
  port = control->ic_port[port_num].icp_port;

  if (!(port_num & 1) && port) {
   pci_free_consistent(port->ip_pdev,
     TOTAL_RING_BUF_SIZE,
     port->ip_cpu_ringbuf,
     port->ip_dma_ringbuf);
   kfree(port);
  }
 }
 soft = control->ic_soft;
 if (soft) {
  free_irq(control->ic_irq, soft);
  if (soft->is_ioc4_serial_addr) {
   iounmap(soft->is_ioc4_serial_addr);
   release_mem_region((unsigned long)
        soft->is_ioc4_serial_addr,
    sizeof(struct ioc4_serial));
  }
  kfree(soft);
 }
 kfree(control);
 idd->idd_serial_data = ((void*)0);

 return 0;
}
