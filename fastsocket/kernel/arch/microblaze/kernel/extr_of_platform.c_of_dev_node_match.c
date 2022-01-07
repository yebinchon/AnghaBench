
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {void* node; } ;


 TYPE_1__* to_of_device (struct device*) ;

__attribute__((used)) static int of_dev_node_match(struct device *dev, void *data)
{
 return to_of_device(dev)->node == data;
}
