
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_queryctrl {int type; unsigned int default_value; unsigned int minimum; int maximum; int step; int flags; int name; int id; } ;
struct uvc_video_chain {int ctrl_mutex; } ;
struct uvc_menu_info {unsigned int value; } ;
struct uvc_control_mapping {int v4l2_type; unsigned int (* get ) (struct uvc_control_mapping*,int ,int ) ;unsigned int menu_count; struct uvc_menu_info* menu_info; int name; int id; } ;
struct TYPE_2__ {int flags; } ;
struct uvc_control {TYPE_1__ info; int cached; } ;


 int EINVAL ;
 int ERESTARTSYS ;
 int UVC_CONTROL_GET_CUR ;
 int UVC_CONTROL_GET_DEF ;
 int UVC_CONTROL_GET_MAX ;
 int UVC_CONTROL_GET_MIN ;
 int UVC_CONTROL_GET_RES ;
 int UVC_CONTROL_SET_CUR ;
 int UVC_CTRL_DATA_DEF ;
 int UVC_CTRL_DATA_MAX ;
 int UVC_CTRL_DATA_MIN ;
 int UVC_CTRL_DATA_RES ;
 int UVC_GET_DEF ;
 int UVC_GET_MAX ;
 int UVC_GET_MIN ;
 int UVC_GET_RES ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int V4L2_CTRL_FLAG_WRITE_ONLY ;



 int memset (struct v4l2_queryctrl*,int ,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int strlcpy (int ,int ,int) ;
 unsigned int stub1 (struct uvc_control_mapping*,int ,int ) ;
 unsigned int stub2 (struct uvc_control_mapping*,int ,int ) ;
 int stub3 (struct uvc_control_mapping*,int ,int ) ;
 int stub4 (struct uvc_control_mapping*,int ,int ) ;
 int uvc_ctrl_data (struct uvc_control*,int ) ;
 int uvc_ctrl_populate_cache (struct uvc_video_chain*,struct uvc_control*) ;
 struct uvc_control* uvc_find_control (struct uvc_video_chain*,int ,struct uvc_control_mapping**) ;

int uvc_query_v4l2_ctrl(struct uvc_video_chain *chain,
 struct v4l2_queryctrl *v4l2_ctrl)
{
 struct uvc_control *ctrl;
 struct uvc_control_mapping *mapping;
 struct uvc_menu_info *menu;
 unsigned int i;
 int ret;

 ret = mutex_lock_interruptible(&chain->ctrl_mutex);
 if (ret < 0)
  return -ERESTARTSYS;

 ctrl = uvc_find_control(chain, v4l2_ctrl->id, &mapping);
 if (ctrl == ((void*)0)) {
  ret = -EINVAL;
  goto done;
 }

 memset(v4l2_ctrl, 0, sizeof *v4l2_ctrl);
 v4l2_ctrl->id = mapping->id;
 v4l2_ctrl->type = mapping->v4l2_type;
 strlcpy(v4l2_ctrl->name, mapping->name, sizeof v4l2_ctrl->name);
 v4l2_ctrl->flags = 0;

 if (!(ctrl->info.flags & UVC_CONTROL_GET_CUR))
  v4l2_ctrl->flags |= V4L2_CTRL_FLAG_WRITE_ONLY;
 if (!(ctrl->info.flags & UVC_CONTROL_SET_CUR))
  v4l2_ctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;

 if (!ctrl->cached) {
  ret = uvc_ctrl_populate_cache(chain, ctrl);
  if (ret < 0)
   goto done;
 }

 if (ctrl->info.flags & UVC_CONTROL_GET_DEF) {
  v4l2_ctrl->default_value = mapping->get(mapping, UVC_GET_DEF,
    uvc_ctrl_data(ctrl, UVC_CTRL_DATA_DEF));
 }

 switch (mapping->v4l2_type) {
 case 128:
  v4l2_ctrl->minimum = 0;
  v4l2_ctrl->maximum = mapping->menu_count - 1;
  v4l2_ctrl->step = 1;

  menu = mapping->menu_info;
  for (i = 0; i < mapping->menu_count; ++i, ++menu) {
   if (menu->value == v4l2_ctrl->default_value) {
    v4l2_ctrl->default_value = i;
    break;
   }
  }

  goto done;

 case 130:
  v4l2_ctrl->minimum = 0;
  v4l2_ctrl->maximum = 1;
  v4l2_ctrl->step = 1;
  goto done;

 case 129:
  v4l2_ctrl->minimum = 0;
  v4l2_ctrl->maximum = 0;
  v4l2_ctrl->step = 0;
  goto done;

 default:
  break;
 }

 if (ctrl->info.flags & UVC_CONTROL_GET_MIN)
  v4l2_ctrl->minimum = mapping->get(mapping, UVC_GET_MIN,
         uvc_ctrl_data(ctrl, UVC_CTRL_DATA_MIN));

 if (ctrl->info.flags & UVC_CONTROL_GET_MAX)
  v4l2_ctrl->maximum = mapping->get(mapping, UVC_GET_MAX,
         uvc_ctrl_data(ctrl, UVC_CTRL_DATA_MAX));

 if (ctrl->info.flags & UVC_CONTROL_GET_RES)
  v4l2_ctrl->step = mapping->get(mapping, UVC_GET_RES,
      uvc_ctrl_data(ctrl, UVC_CTRL_DATA_RES));

done:
 mutex_unlock(&chain->ctrl_mutex);
 return ret;
}
