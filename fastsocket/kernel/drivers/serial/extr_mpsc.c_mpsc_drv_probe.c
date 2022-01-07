
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct platform_device {size_t id; } ;
struct mpsc_port_info {int port; int tx_lock; } ;


 int ENODEV ;
 size_t MPSC_NUM_CTLRS ;
 int mpsc_drv_get_platform_data (struct mpsc_port_info*,struct platform_device*,size_t) ;
 int mpsc_drv_map_regs (struct mpsc_port_info*,struct platform_device*) ;
 int mpsc_drv_unmap_regs (struct mpsc_port_info*) ;
 int mpsc_make_ready (struct mpsc_port_info*) ;
 struct mpsc_port_info* mpsc_ports ;
 int mpsc_reg ;
 int mpsc_release_port (struct uart_port*) ;
 int pr_debug (char*,size_t) ;
 int spin_lock_init (int *) ;
 int uart_add_one_port (int *,int *) ;

__attribute__((used)) static int mpsc_drv_probe(struct platform_device *dev)
{
 struct mpsc_port_info *pi;
 int rc = -ENODEV;

 pr_debug("mpsc_drv_probe: Adding MPSC %d\n", dev->id);

 if (dev->id < MPSC_NUM_CTLRS) {
  pi = &mpsc_ports[dev->id];

  if (!(rc = mpsc_drv_map_regs(pi, dev))) {
   mpsc_drv_get_platform_data(pi, dev, dev->id);

   if (!(rc = mpsc_make_ready(pi))) {
    spin_lock_init(&pi->tx_lock);
    if (!(rc = uart_add_one_port(&mpsc_reg,
        &pi->port))) {
     rc = 0;
    } else {
     mpsc_release_port((struct uart_port *)
       pi);
     mpsc_drv_unmap_regs(pi);
    }
   } else {
    mpsc_drv_unmap_regs(pi);
   }
  }
 }

 return rc;
}
