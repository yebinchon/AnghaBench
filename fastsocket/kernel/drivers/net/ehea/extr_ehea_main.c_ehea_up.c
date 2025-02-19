
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct ehea_port {scalar_t__ state; int num_def_qps; TYPE_1__* port_res; int adapter; } ;
struct TYPE_2__ {int qp; } ;


 scalar_t__ EHEA_PORT_UP ;
 int EIO ;
 int H_REG_BCMC ;
 int ehea_activate_qp (int ,int ) ;
 int ehea_broadcast_reg_helper (struct ehea_port*,int ) ;
 int ehea_clean_all_portres (struct ehea_port*) ;
 int ehea_configure_port (struct ehea_port*) ;
 int ehea_error (char*,...) ;
 int ehea_fill_port_res (TYPE_1__*) ;
 int ehea_free_interrupts (struct net_device*) ;
 int ehea_info (char*,int ,int) ;
 int ehea_port_res_setup (struct ehea_port*,int) ;
 int ehea_reg_interrupts (struct net_device*) ;
 int ehea_update_bcmc_registrations () ;
 int ehea_update_firmware_handles () ;
 struct ehea_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ehea_up(struct net_device *dev)
{
 int ret, i;
 struct ehea_port *port = netdev_priv(dev);

 if (port->state == EHEA_PORT_UP)
  return 0;

 ret = ehea_port_res_setup(port, port->num_def_qps);
 if (ret) {
  ehea_error("port_res_failed");
  goto out;
 }


 ret = ehea_configure_port(port);
 if (ret) {
  ehea_error("ehea_configure_port failed. ret:%d", ret);
  goto out_clean_pr;
 }

 ret = ehea_reg_interrupts(dev);
 if (ret) {
  ehea_error("reg_interrupts failed. ret:%d", ret);
  goto out_clean_pr;
 }

 for (i = 0; i < port->num_def_qps; i++) {
  ret = ehea_activate_qp(port->adapter, port->port_res[i].qp);
  if (ret) {
   ehea_error("activate_qp failed");
   goto out_free_irqs;
  }
 }

 for (i = 0; i < port->num_def_qps; i++) {
  ret = ehea_fill_port_res(&port->port_res[i]);
  if (ret) {
   ehea_error("out_free_irqs");
   goto out_free_irqs;
  }
 }

 ret = ehea_broadcast_reg_helper(port, H_REG_BCMC);
 if (ret) {
  ret = -EIO;
  goto out_free_irqs;
 }

 port->state = EHEA_PORT_UP;

 ret = 0;
 goto out;

out_free_irqs:
 ehea_free_interrupts(dev);

out_clean_pr:
 ehea_clean_all_portres(port);
out:
 if (ret)
  ehea_info("Failed starting %s. ret=%i", dev->name, ret);

 ehea_update_bcmc_registrations();
 ehea_update_firmware_handles();

 return ret;
}
