
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvc_device {TYPE_1__* udev; } ;
struct uvc_control_info {int selector; int entity; } ;
struct uvc_control {TYPE_2__* entity; scalar_t__ initialized; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int devpath; } ;


 int UVC_TRACE_CONTROL ;
 int uvc_ctrl_add_info (struct uvc_device*,struct uvc_control*,struct uvc_control_info*) ;
 int uvc_ctrl_fill_xu_info (struct uvc_device*,struct uvc_control*,struct uvc_control_info*) ;
 int uvc_trace (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int uvc_ctrl_init_xu_ctrl(struct uvc_device *dev,
 struct uvc_control *ctrl)
{
 struct uvc_control_info info;
 int ret;

 if (ctrl->initialized)
  return 0;

 ret = uvc_ctrl_fill_xu_info(dev, ctrl, &info);
 if (ret < 0)
  return ret;

 ret = uvc_ctrl_add_info(dev, ctrl, &info);
 if (ret < 0)
  uvc_trace(UVC_TRACE_CONTROL, "Failed to initialize control "
     "%pUl/%u on device %s entity %u\n", info.entity,
     info.selector, dev->udev->devpath, ctrl->entity->id);

 return ret;
}
