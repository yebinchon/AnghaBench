
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_port_modify {int clr_port_cap_mask; } ;
struct ib_device {int phys_port_cnt; } ;
struct cm_port {int mad_agent; int port_num; } ;
struct cm_device {int device; struct cm_port** port; int list; } ;
struct TYPE_2__ {int wq; int device_lock; } ;


 int IB_PORT_CM_SUP ;
 TYPE_1__ cm ;
 int cm_client ;
 int cm_remove_port_fs (struct cm_port*) ;
 int device_unregister (int ) ;
 int flush_workqueue (int ) ;
 struct cm_device* ib_get_client_data (struct ib_device*,int *) ;
 int ib_modify_port (struct ib_device*,int ,int ,struct ib_port_modify*) ;
 int ib_unregister_mad_agent (int ) ;
 int kfree (struct cm_device*) ;
 int list_del (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cm_remove_one(struct ib_device *ib_device)
{
 struct cm_device *cm_dev;
 struct cm_port *port;
 struct ib_port_modify port_modify = {
  .clr_port_cap_mask = IB_PORT_CM_SUP
 };
 unsigned long flags;
 int i;

 cm_dev = ib_get_client_data(ib_device, &cm_client);
 if (!cm_dev)
  return;

 write_lock_irqsave(&cm.device_lock, flags);
 list_del(&cm_dev->list);
 write_unlock_irqrestore(&cm.device_lock, flags);

 for (i = 1; i <= ib_device->phys_port_cnt; i++) {
  port = cm_dev->port[i-1];
  ib_modify_port(ib_device, port->port_num, 0, &port_modify);
  ib_unregister_mad_agent(port->mad_agent);
  flush_workqueue(cm.wq);
  cm_remove_port_fs(port);
 }
 device_unregister(cm_dev->device);
 kfree(cm_dev);
}
