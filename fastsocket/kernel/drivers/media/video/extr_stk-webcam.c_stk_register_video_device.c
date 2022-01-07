
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * parent; int debug; } ;
struct stk_camera {TYPE_2__ vdev; TYPE_1__* interface; } ;
struct TYPE_5__ {int dev; } ;


 int STK_ERROR (char*) ;
 int STK_INFO (char*,int ) ;
 int VFL_TYPE_GRABBER ;
 int debug ;
 TYPE_2__ stk_v4l_data ;
 int video_device_node_name (TYPE_2__*) ;
 int video_register_device (TYPE_2__*,int ,int) ;

__attribute__((used)) static int stk_register_video_device(struct stk_camera *dev)
{
 int err;

 dev->vdev = stk_v4l_data;
 dev->vdev.debug = debug;
 dev->vdev.parent = &dev->interface->dev;
 err = video_register_device(&dev->vdev, VFL_TYPE_GRABBER, -1);
 if (err)
  STK_ERROR("v4l registration failed\n");
 else
  STK_INFO("Syntek USB2.0 Camera is now controlling device %s\n",
    video_device_node_name(&dev->vdev));
 return err;
}
