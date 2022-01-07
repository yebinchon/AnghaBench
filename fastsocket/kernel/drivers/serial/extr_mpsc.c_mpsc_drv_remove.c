
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct platform_device {size_t id; } ;
struct TYPE_3__ {int port; } ;


 int ENODEV ;
 size_t MPSC_NUM_CTLRS ;
 int mpsc_drv_unmap_regs (TYPE_1__*) ;
 TYPE_1__* mpsc_ports ;
 int mpsc_reg ;
 int mpsc_release_port (struct uart_port*) ;
 int pr_debug (char*,size_t) ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int mpsc_drv_remove(struct platform_device *dev)
{
 pr_debug("mpsc_drv_exit: Removing MPSC %d\n", dev->id);

 if (dev->id < MPSC_NUM_CTLRS) {
  uart_remove_one_port(&mpsc_reg, &mpsc_ports[dev->id].port);
  mpsc_release_port((struct uart_port *)
    &mpsc_ports[dev->id].port);
  mpsc_drv_unmap_regs(&mpsc_ports[dev->id]);
  return 0;
 } else {
  return -ENODEV;
 }
}
