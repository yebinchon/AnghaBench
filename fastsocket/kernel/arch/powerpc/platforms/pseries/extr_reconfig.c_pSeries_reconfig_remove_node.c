
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int PSERIES_RECONFIG_REMOVE ;
 int blocking_notifier_call_chain (int *,int ,struct device_node*) ;
 int of_detach_node (struct device_node*) ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int pSeries_reconfig_chain ;
 int remove_node_proc_entries (struct device_node*) ;

__attribute__((used)) static int pSeries_reconfig_remove_node(struct device_node *np)
{
 struct device_node *parent, *child;

 parent = of_get_parent(np);
 if (!parent)
  return -EINVAL;

 if ((child = of_get_next_child(np, ((void*)0)))) {
  of_node_put(child);
  of_node_put(parent);
  return -EBUSY;
 }

 remove_node_proc_entries(np);

 blocking_notifier_call_chain(&pSeries_reconfig_chain,
       PSERIES_RECONFIG_REMOVE, np);
 of_detach_node(np);

 of_node_put(parent);
 of_node_put(np);
 return 0;
}
