
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device {struct device_node* node; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct of_device* to_of_device (struct device*) ;

__attribute__((used)) static int node_match(struct device *dev, void *data)
{
 struct of_device *op = to_of_device(dev);
 struct device_node *dp = data;

 return (op->node == dp);
}
