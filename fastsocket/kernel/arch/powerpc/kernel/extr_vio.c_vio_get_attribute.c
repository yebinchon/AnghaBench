
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct vio_dev {TYPE_2__ dev; } ;


 void const* of_get_property (int ,char*,int*) ;

const void *vio_get_attribute(struct vio_dev *vdev, char *which, int *length)
{
 return of_get_property(vdev->dev.archdata.of_node, which, length);
}
