
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_port_modify {scalar_t__ clr_port_cap_mask; scalar_t__ set_port_cap_mask; } ;
struct ib_mad_reg_req {int method_mask; int mgmt_class_version; int mgmt_class; } ;
struct ib_device {int phys_port_cnt; int name; int dev; int node_type; } ;
struct cm_port {int port_num; int mad_agent; struct cm_device* cm_dev; } ;
struct cm_device {int device; struct cm_port** port; int list; struct ib_device* ib_device; } ;
struct TYPE_2__ {int device_lock; int device_list; } ;


 int GFP_KERNEL ;
 int IB_CM_CLASS_VERSION ;
 int IB_MGMT_CLASS_CM ;
 int IB_MGMT_METHOD_SEND ;
 scalar_t__ IB_PORT_CM_SUP ;
 int IB_QPT_GSI ;
 scalar_t__ IS_ERR (int ) ;
 int MKDEV (int ,int ) ;
 scalar_t__ RDMA_TRANSPORT_IB ;
 TYPE_1__ cm ;
 int cm_class ;
 int cm_client ;
 int cm_create_port_fs (struct cm_port*) ;
 int cm_get_ack_delay (struct cm_device*) ;
 int cm_recv_handler ;
 int cm_remove_port_fs (struct cm_port*) ;
 int cm_send_handler ;
 int device_create (int *,int *,int ,int *,char*,int ) ;
 int device_unregister (int ) ;
 int ib_modify_port (struct ib_device*,int,int ,struct ib_port_modify*) ;
 int ib_register_mad_agent (struct ib_device*,int,int ,struct ib_mad_reg_req*,int ,int ,int ,struct cm_port*) ;
 int ib_set_client_data (struct ib_device*,int *,struct cm_device*) ;
 int ib_unregister_mad_agent (int ) ;
 int kfree (struct cm_device*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ rdma_node_get_transport (int ) ;
 int set_bit (int ,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cm_add_one(struct ib_device *ib_device)
{
 struct cm_device *cm_dev;
 struct cm_port *port;
 struct ib_mad_reg_req reg_req = {
  .mgmt_class = IB_MGMT_CLASS_CM,
  .mgmt_class_version = IB_CM_CLASS_VERSION
 };
 struct ib_port_modify port_modify = {
  .set_port_cap_mask = IB_PORT_CM_SUP
 };
 unsigned long flags;
 int ret;
 u8 i;

 if (rdma_node_get_transport(ib_device->node_type) != RDMA_TRANSPORT_IB)
  return;

 cm_dev = kzalloc(sizeof(*cm_dev) + sizeof(*port) *
    ib_device->phys_port_cnt, GFP_KERNEL);
 if (!cm_dev)
  return;

 cm_dev->ib_device = ib_device;
 cm_get_ack_delay(cm_dev);

 cm_dev->device = device_create(&cm_class, &ib_device->dev,
           MKDEV(0, 0), ((void*)0),
           "%s", ib_device->name);
 if (IS_ERR(cm_dev->device)) {
  kfree(cm_dev);
  return;
 }

 set_bit(IB_MGMT_METHOD_SEND, reg_req.method_mask);
 for (i = 1; i <= ib_device->phys_port_cnt; i++) {
  port = kzalloc(sizeof *port, GFP_KERNEL);
  if (!port)
   goto error1;

  cm_dev->port[i-1] = port;
  port->cm_dev = cm_dev;
  port->port_num = i;

  ret = cm_create_port_fs(port);
  if (ret)
   goto error1;

  port->mad_agent = ib_register_mad_agent(ib_device, i,
       IB_QPT_GSI,
       &reg_req,
       0,
       cm_send_handler,
       cm_recv_handler,
       port);
  if (IS_ERR(port->mad_agent))
   goto error2;

  ret = ib_modify_port(ib_device, i, 0, &port_modify);
  if (ret)
   goto error3;
 }
 ib_set_client_data(ib_device, &cm_client, cm_dev);

 write_lock_irqsave(&cm.device_lock, flags);
 list_add_tail(&cm_dev->list, &cm.device_list);
 write_unlock_irqrestore(&cm.device_lock, flags);
 return;

error3:
 ib_unregister_mad_agent(port->mad_agent);
error2:
 cm_remove_port_fs(port);
error1:
 port_modify.set_port_cap_mask = 0;
 port_modify.clr_port_cap_mask = IB_PORT_CM_SUP;
 while (--i) {
  port = cm_dev->port[i-1];
  ib_modify_port(ib_device, port->port_num, 0, &port_modify);
  ib_unregister_mad_agent(port->mad_agent);
  cm_remove_port_fs(port);
 }
 device_unregister(cm_dev->device);
 kfree(cm_dev);
}
