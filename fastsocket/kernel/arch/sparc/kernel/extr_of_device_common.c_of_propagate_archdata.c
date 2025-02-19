
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_archdata {int numa_node; int host_controller; int stc; int iommu; } ;
struct TYPE_2__ {struct dev_archdata archdata; } ;
struct of_device {TYPE_1__ dev; struct device_node* node; } ;
struct device_node {struct device_node* child; struct device_node* sibling; } ;


 struct of_device* of_find_device_by_node (struct device_node*) ;

void of_propagate_archdata(struct of_device *bus)
{
 struct dev_archdata *bus_sd = &bus->dev.archdata;
 struct device_node *bus_dp = bus->node;
 struct device_node *dp;

 for (dp = bus_dp->child; dp; dp = dp->sibling) {
  struct of_device *op = of_find_device_by_node(dp);

  op->dev.archdata.iommu = bus_sd->iommu;
  op->dev.archdata.stc = bus_sd->stc;
  op->dev.archdata.host_controller = bus_sd->host_controller;
  op->dev.archdata.numa_node = bus_sd->numa_node;

  if (dp->child)
   of_propagate_archdata(op);
 }
}
