
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ehea_adapter {TYPE_3__** port; TYPE_1__* ofdev; } ;
struct device_node {int full_name; } ;
struct TYPE_6__ {TYPE_2__* netdev; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {struct device_node* node; } ;


 int EIO ;
 scalar_t__ ehea_add_adapter_mr (struct ehea_adapter*) ;
 int ehea_error (char*,...) ;
 int ehea_info (char*,int ,int const) ;
 int ehea_remove_adapter_mr (struct ehea_adapter*) ;
 TYPE_3__* ehea_setup_single_port (struct ehea_adapter*,int const,struct device_node*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int ehea_setup_ports(struct ehea_adapter *adapter)
{
 struct device_node *lhea_dn;
 struct device_node *eth_dn = ((void*)0);

 const u32 *dn_log_port_id;
 int i = 0;

 lhea_dn = adapter->ofdev->node;
 while ((eth_dn = of_get_next_child(lhea_dn, eth_dn))) {

  dn_log_port_id = of_get_property(eth_dn, "ibm,hea-port-no",
       ((void*)0));
  if (!dn_log_port_id) {
   ehea_error("bad device node: eth_dn name=%s",
       eth_dn->full_name);
   continue;
  }

  if (ehea_add_adapter_mr(adapter)) {
   ehea_error("creating MR failed");
   of_node_put(eth_dn);
   return -EIO;
  }

  adapter->port[i] = ehea_setup_single_port(adapter,
         *dn_log_port_id,
         eth_dn);
  if (adapter->port[i])
   ehea_info("%s -> logical port id #%d",
      adapter->port[i]->netdev->name,
      *dn_log_port_id);
  else
   ehea_remove_adapter_mr(adapter);

  i++;
 };
 return 0;
}
