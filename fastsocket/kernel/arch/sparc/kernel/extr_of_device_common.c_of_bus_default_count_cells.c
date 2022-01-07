
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int get_cells (struct device_node*,int*,int*) ;

void of_bus_default_count_cells(struct device_node *dev, int *addrc, int *sizec)
{
 get_cells(dev, addrc, sizec);
}
