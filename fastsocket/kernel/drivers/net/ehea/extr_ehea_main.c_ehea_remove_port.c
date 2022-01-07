
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ehea_port {TYPE_1__* netdev; } ;
struct ehea_adapter {struct ehea_port** port; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int name; } ;


 int EHEA_MAX_PORTS ;
 int EINVAL ;
 struct ehea_adapter* dev_get_drvdata (struct device*) ;
 int ehea_error (char*,int ) ;
 struct ehea_port* ehea_get_port (struct ehea_adapter*,int ) ;
 int ehea_info (char*,int ,int ) ;
 int ehea_remove_adapter_mr (struct ehea_adapter*) ;
 int ehea_shutdown_single_port (struct ehea_port*) ;
 int sscanf (char const*,char*,int *) ;

__attribute__((used)) static ssize_t ehea_remove_port(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct ehea_adapter *adapter = dev_get_drvdata(dev);
 struct ehea_port *port;
 int i;
 u32 logical_port_id;

 sscanf(buf, "%d", &logical_port_id);

 port = ehea_get_port(adapter, logical_port_id);

 if (port) {
  ehea_info("removed %s (logical port id=%d)", port->netdev->name,
     logical_port_id);

  ehea_shutdown_single_port(port);

  for (i = 0; i < EHEA_MAX_PORTS; i++)
   if (adapter->port[i] == port) {
    adapter->port[i] = ((void*)0);
    break;
   }
 } else {
  ehea_error("removing port with logical port id=%d failed. port "
      "not configured.", logical_port_id);
  return -EINVAL;
 }

 ehea_remove_adapter_mr(adapter);

 return (ssize_t) count;
}
