
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct of_device {TYPE_1__ dev; int * node; } ;


 int BUG_ON (int ) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int of_node_to_nid (int *) ;
 int set_dev_node (TYPE_1__*,int ) ;

int of_device_register(struct of_device *ofdev)
{
 BUG_ON(ofdev->node == ((void*)0));

 device_initialize(&ofdev->dev);




 if (!ofdev->dev.parent)
  set_dev_node(&ofdev->dev, of_node_to_nid(ofdev->node));

 return device_add(&ofdev->dev);
}
