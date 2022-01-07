
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devres_node {int entry; } ;
struct device {int devres_head; } ;


 int BUG_ON (int) ;
 int devres_log (struct device*,struct devres_node*,char*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void add_dr(struct device *dev, struct devres_node *node)
{
 devres_log(dev, node, "ADD");
 BUG_ON(!list_empty(&node->entry));
 list_add_tail(&node->entry, &dev->devres_head);
}
