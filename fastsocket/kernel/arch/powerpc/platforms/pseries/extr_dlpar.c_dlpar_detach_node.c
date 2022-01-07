
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct property {struct property* next; int name; } ;
struct device_node {TYPE_1__* pde; struct property* properties; struct device_node* parent; } ;
struct TYPE_2__ {int name; } ;


 int PSERIES_RECONFIG_REMOVE ;
 int blocking_notifier_call_chain (int *,int ,struct device_node*) ;
 int of_detach_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int pSeries_reconfig_chain ;
 int remove_proc_entry (int ,TYPE_1__*) ;

int dlpar_detach_node(struct device_node *dn)
{
 struct device_node *parent = dn->parent;
 struct property *prop = dn->properties;
 blocking_notifier_call_chain(&pSeries_reconfig_chain,
       PSERIES_RECONFIG_REMOVE, dn);
 of_detach_node(dn);
 of_node_put(dn);

 return 0;
}
