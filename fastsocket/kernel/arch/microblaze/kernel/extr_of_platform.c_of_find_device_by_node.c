
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device (int *,int *,struct device_node*,int ) ;
 int of_dev_node_match ;
 int of_platform_bus_type ;
 struct of_device* to_of_device (struct device*) ;

struct of_device *of_find_device_by_node(struct device_node *np)
{
 struct device *dev;

 dev = bus_find_device(&of_platform_bus_type,
         ((void*)0), np, of_dev_node_match);
 if (dev)
  return to_of_device(dev);
 return ((void*)0);
}
