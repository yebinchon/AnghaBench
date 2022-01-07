
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_ext_control {int value; int id; } ;
struct uvc_video_chain {TYPE_4__* dev; } ;
struct uvc_control_mapping {int v4l2_type; int (* get ) (struct uvc_control_mapping*,int ,int ) ;int menu_count; int size; int (* set ) (struct uvc_control_mapping*,int,int ) ;TYPE_1__* menu_info; } ;
struct TYPE_7__ {int flags; int size; int selector; } ;
struct uvc_control {int loaded; int dirty; int modified; TYPE_3__ info; TYPE_2__* entity; int cached; } ;
typedef int s32 ;
struct TYPE_8__ {int intfnum; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int value; } ;


 int EINVAL ;
 int ERANGE ;
 int UVC_CONTROL_GET_CUR ;
 int UVC_CONTROL_SET_CUR ;
 int UVC_CTRL_DATA_BACKUP ;
 int UVC_CTRL_DATA_CURRENT ;
 int UVC_CTRL_DATA_MAX ;
 int UVC_CTRL_DATA_MIN ;
 int UVC_CTRL_DATA_RES ;
 int UVC_GET_CUR ;
 int UVC_GET_MAX ;
 int UVC_GET_MIN ;
 int UVC_GET_RES ;



 void* clamp (int,int,int) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 int stub1 (struct uvc_control_mapping*,int ,int ) ;
 int stub2 (struct uvc_control_mapping*,int ,int ) ;
 int stub3 (struct uvc_control_mapping*,int ,int ) ;
 int stub4 (struct uvc_control_mapping*,int,int ) ;
 int uvc_ctrl_data (struct uvc_control*,int ) ;
 int uvc_ctrl_populate_cache (struct uvc_video_chain*,struct uvc_control*) ;
 struct uvc_control* uvc_find_control (struct uvc_video_chain*,int ,struct uvc_control_mapping**) ;
 int uvc_query_ctrl (TYPE_4__*,int ,int ,int ,int ,int ,int) ;

int uvc_ctrl_set(struct uvc_video_chain *chain,
 struct v4l2_ext_control *xctrl)
{
 struct uvc_control *ctrl;
 struct uvc_control_mapping *mapping;
 s32 value;
 u32 step;
 s32 min;
 s32 max;
 int ret;

 ctrl = uvc_find_control(chain, xctrl->id, &mapping);
 if (ctrl == ((void*)0) || (ctrl->info.flags & UVC_CONTROL_SET_CUR) == 0)
  return -EINVAL;


 switch (mapping->v4l2_type) {
 case 129:
  if (!ctrl->cached) {
   ret = uvc_ctrl_populate_cache(chain, ctrl);
   if (ret < 0)
    return ret;
  }

  min = mapping->get(mapping, UVC_GET_MIN,
       uvc_ctrl_data(ctrl, UVC_CTRL_DATA_MIN));
  max = mapping->get(mapping, UVC_GET_MAX,
       uvc_ctrl_data(ctrl, UVC_CTRL_DATA_MAX));
  step = mapping->get(mapping, UVC_GET_RES,
        uvc_ctrl_data(ctrl, UVC_CTRL_DATA_RES));
  if (step == 0)
   step = 1;

  xctrl->value = min + (xctrl->value - min + step/2) / step * step;
  xctrl->value = clamp(xctrl->value, min, max);
  value = xctrl->value;
  break;

 case 130:
  xctrl->value = clamp(xctrl->value, 0, 1);
  value = xctrl->value;
  break;

 case 128:
  if (xctrl->value < 0 || xctrl->value >= mapping->menu_count)
   return -ERANGE;
  value = mapping->menu_info[xctrl->value].value;
  break;

 default:
  value = xctrl->value;
  break;
 }





 if (!ctrl->loaded && (ctrl->info.size * 8) != mapping->size) {
  if ((ctrl->info.flags & UVC_CONTROL_GET_CUR) == 0) {
   memset(uvc_ctrl_data(ctrl, UVC_CTRL_DATA_CURRENT),
    0, ctrl->info.size);
  } else {
   ret = uvc_query_ctrl(chain->dev, UVC_GET_CUR,
    ctrl->entity->id, chain->dev->intfnum,
    ctrl->info.selector,
    uvc_ctrl_data(ctrl, UVC_CTRL_DATA_CURRENT),
    ctrl->info.size);
   if (ret < 0)
    return ret;
  }

  ctrl->loaded = 1;
 }


 if (!ctrl->dirty) {
  memcpy(uvc_ctrl_data(ctrl, UVC_CTRL_DATA_BACKUP),
         uvc_ctrl_data(ctrl, UVC_CTRL_DATA_CURRENT),
         ctrl->info.size);
 }

 mapping->set(mapping, value,
  uvc_ctrl_data(ctrl, UVC_CTRL_DATA_CURRENT));

 ctrl->dirty = 1;
 ctrl->modified = 1;
 return 0;
}
