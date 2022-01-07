
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx {int v4l2_dev; int ctl_input; } ;
struct TYPE_2__ {int vmux; } ;


 TYPE_1__* INPUT (int ) ;
 int core ;
 int reset ;
 int s_routing ;
 int s_stream ;
 int v4l2_device_call_all (int *,int ,int ,int ,int ,...) ;
 int video ;

void em28xx_wake_i2c(struct em28xx *dev)
{
 v4l2_device_call_all(&dev->v4l2_dev, 0, core, reset, 0);
 v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_routing,
   INPUT(dev->ctl_input)->vmux, 0, 0);
 v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_stream, 0);
}
