
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ const u32 ;
struct ehea_adapter {TYPE_1__* ofdev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* node; } ;


 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 scalar_t__* of_get_property (struct device_node*,char*,int *) ;

__attribute__((used)) static struct device_node *ehea_get_eth_dn(struct ehea_adapter *adapter,
        u32 logical_port_id)
{
 struct device_node *lhea_dn;
 struct device_node *eth_dn = ((void*)0);
 const u32 *dn_log_port_id;

 lhea_dn = adapter->ofdev->node;
 while ((eth_dn = of_get_next_child(lhea_dn, eth_dn))) {

  dn_log_port_id = of_get_property(eth_dn, "ibm,hea-port-no",
       ((void*)0));
  if (dn_log_port_id)
   if (*dn_log_port_id == logical_port_id)
    return eth_dn;
 };

 return ((void*)0);
}
