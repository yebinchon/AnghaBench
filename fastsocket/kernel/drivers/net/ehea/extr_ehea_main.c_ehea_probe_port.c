
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ehea_port {TYPE_1__* netdev; } ;
struct ehea_adapter {struct ehea_port** port; } ;
struct device_node {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int name; } ;


 int EHEA_MAX_PORTS ;
 int EINVAL ;
 int EIO ;
 struct ehea_adapter* dev_get_drvdata (struct device*) ;
 scalar_t__ ehea_add_adapter_mr (struct ehea_adapter*) ;
 int ehea_error (char*) ;
 struct device_node* ehea_get_eth_dn (struct ehea_adapter*,int ) ;
 struct ehea_port* ehea_get_port (struct ehea_adapter*,int ) ;
 int ehea_info (char*,int ,...) ;
 int ehea_remove_adapter_mr (struct ehea_adapter*) ;
 struct ehea_port* ehea_setup_single_port (struct ehea_adapter*,int ,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int sscanf (char const*,char*,int *) ;

__attribute__((used)) static ssize_t ehea_probe_port(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct ehea_adapter *adapter = dev_get_drvdata(dev);
 struct ehea_port *port;
 struct device_node *eth_dn = ((void*)0);
 int i;

 u32 logical_port_id;

 sscanf(buf, "%d", &logical_port_id);

 port = ehea_get_port(adapter, logical_port_id);

 if (port) {
  ehea_info("adding port with logical port id=%d failed. port "
     "already configured as %s.", logical_port_id,
     port->netdev->name);
  return -EINVAL;
 }

 eth_dn = ehea_get_eth_dn(adapter, logical_port_id);

 if (!eth_dn) {
  ehea_info("no logical port with id %d found", logical_port_id);
  return -EINVAL;
 }

 if (ehea_add_adapter_mr(adapter)) {
  ehea_error("creating MR failed");
  return -EIO;
 }

 port = ehea_setup_single_port(adapter, logical_port_id, eth_dn);

 of_node_put(eth_dn);

 if (port) {
  for (i = 0; i < EHEA_MAX_PORTS; i++)
   if (!adapter->port[i]) {
    adapter->port[i] = port;
    break;
   }

  ehea_info("added %s (logical port id=%d)", port->netdev->name,
     logical_port_id);
 } else {
  ehea_remove_adapter_mr(adapter);
  return -EIO;
 }

 return (ssize_t) count;
}
