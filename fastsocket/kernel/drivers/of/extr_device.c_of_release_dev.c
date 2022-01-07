
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device {int node; } ;
struct device {int dummy; } ;


 int kfree (struct of_device*) ;
 int of_node_put (int ) ;
 struct of_device* to_of_device (struct device*) ;

void of_release_dev(struct device *dev)
{
 struct of_device *ofdev;

 ofdev = to_of_device(dev);
 of_node_put(ofdev->node);
 kfree(ofdev);
}
