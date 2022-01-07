
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;



void of_bus_sbus_count_cells(struct device_node *child, int *addrc, int *sizec)
{
 if (addrc)
  *addrc = 2;
 if (sizec)
  *sizec = 1;
}
