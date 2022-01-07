
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int archdata; } ;


 void* dev_archdata_get_node (int *) ;

__attribute__((used)) static int of_dev_node_match(struct device *dev, void *data)
{
        return dev_archdata_get_node(&dev->archdata) == data;
}
