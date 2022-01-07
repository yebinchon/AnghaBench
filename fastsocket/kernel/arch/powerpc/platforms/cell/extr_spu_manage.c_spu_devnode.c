
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu {struct device_node* devnode; } ;
struct device_node {int dummy; } ;



struct device_node *spu_devnode(struct spu *spu)
{
 return spu->devnode;
}
