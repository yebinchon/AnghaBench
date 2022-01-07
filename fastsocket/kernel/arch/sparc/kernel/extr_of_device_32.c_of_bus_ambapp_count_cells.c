
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;



__attribute__((used)) static void of_bus_ambapp_count_cells(struct device_node *child,
          int *addrc, int *sizec)
{
 if (addrc)
  *addrc = 1;
 if (sizec)
  *sizec = 1;
}
