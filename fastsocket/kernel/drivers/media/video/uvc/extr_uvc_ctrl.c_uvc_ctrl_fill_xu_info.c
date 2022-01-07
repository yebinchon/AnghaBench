
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct uvc_device {int intfnum; } ;
struct uvc_control_info {int flags; int size; scalar_t__ selector; int entity; scalar_t__ index; } ;
struct uvc_control {TYPE_2__* entity; scalar_t__ index; } ;
typedef int __le16 ;
struct TYPE_3__ {int guidExtensionCode; } ;
struct TYPE_4__ {int id; TYPE_1__ extension; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UVC_CONTROL_AUTO_UPDATE ;
 int UVC_CONTROL_CAP_AUTOUPDATE ;
 int UVC_CONTROL_CAP_GET ;
 int UVC_CONTROL_CAP_SET ;
 int UVC_CONTROL_GET_CUR ;
 int UVC_CONTROL_GET_DEF ;
 int UVC_CONTROL_GET_MAX ;
 int UVC_CONTROL_GET_MIN ;
 int UVC_CONTROL_GET_RES ;
 int UVC_CONTROL_SET_CUR ;
 int UVC_GET_INFO ;
 int UVC_GET_LEN ;
 int UVC_TRACE_CONTROL ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int le16_to_cpup (int *) ;
 int memcpy (int ,int ,int) ;
 int uvc_ctrl_fixup_xu_info (struct uvc_device*,struct uvc_control const*,struct uvc_control_info*) ;
 int uvc_query_ctrl (struct uvc_device*,int ,int ,int ,scalar_t__,int*,int) ;
 int uvc_trace (int ,char*,int ,scalar_t__,int,...) ;

__attribute__((used)) static int uvc_ctrl_fill_xu_info(struct uvc_device *dev,
 const struct uvc_control *ctrl, struct uvc_control_info *info)
{
 u8 *data;
 int ret;

 data = kmalloc(2, GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 memcpy(info->entity, ctrl->entity->extension.guidExtensionCode,
        sizeof(info->entity));
 info->index = ctrl->index;
 info->selector = ctrl->index + 1;


 ret = uvc_query_ctrl(dev, UVC_GET_LEN, ctrl->entity->id, dev->intfnum,
        info->selector, data, 2);
 if (ret < 0) {
  uvc_trace(UVC_TRACE_CONTROL,
     "GET_LEN failed on control %pUl/%u (%d).\n",
      info->entity, info->selector, ret);
  goto done;
 }

 info->size = le16_to_cpup((__le16 *)data);


 ret = uvc_query_ctrl(dev, UVC_GET_INFO, ctrl->entity->id, dev->intfnum,
        info->selector, data, 1);
 if (ret < 0) {
  uvc_trace(UVC_TRACE_CONTROL,
     "GET_INFO failed on control %pUl/%u (%d).\n",
     info->entity, info->selector, ret);
  goto done;
 }

 info->flags = UVC_CONTROL_GET_MIN | UVC_CONTROL_GET_MAX
      | UVC_CONTROL_GET_RES | UVC_CONTROL_GET_DEF
      | (data[0] & UVC_CONTROL_CAP_GET ? UVC_CONTROL_GET_CUR : 0)
      | (data[0] & UVC_CONTROL_CAP_SET ? UVC_CONTROL_SET_CUR : 0)
      | (data[0] & UVC_CONTROL_CAP_AUTOUPDATE ?
         UVC_CONTROL_AUTO_UPDATE : 0);

 uvc_ctrl_fixup_xu_info(dev, ctrl, info);

 uvc_trace(UVC_TRACE_CONTROL, "XU control %pUl/%u queried: len %u, "
    "flags { get %u set %u auto %u }.\n",
    info->entity, info->selector, info->size,
    (info->flags & UVC_CONTROL_GET_CUR) ? 1 : 0,
    (info->flags & UVC_CONTROL_SET_CUR) ? 1 : 0,
    (info->flags & UVC_CONTROL_AUTO_UPDATE) ? 1 : 0);

done:
 kfree(data);
 return ret;
}
