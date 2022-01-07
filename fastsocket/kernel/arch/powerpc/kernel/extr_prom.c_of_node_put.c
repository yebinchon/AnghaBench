
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int kref; } ;


 int kref_put (int *,int ) ;
 int of_node_release ;

void of_node_put(struct device_node *node)
{
 if (node)
  kref_put(&node->kref, of_node_release);
}
