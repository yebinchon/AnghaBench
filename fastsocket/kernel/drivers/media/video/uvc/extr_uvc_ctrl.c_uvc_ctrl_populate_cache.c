
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uvc_video_chain {TYPE_3__* dev; } ;
struct TYPE_5__ {int flags; int size; int selector; } ;
struct uvc_control {int cached; TYPE_2__ info; TYPE_1__* entity; } ;
struct TYPE_6__ {int intfnum; } ;
struct TYPE_4__ {int id; } ;


 int UVC_CONTROL_GET_DEF ;
 int UVC_CONTROL_GET_MAX ;
 int UVC_CONTROL_GET_MIN ;
 int UVC_CONTROL_GET_RES ;
 int UVC_CTRL_DATA_DEF ;
 int UVC_CTRL_DATA_MAX ;
 int UVC_CTRL_DATA_MIN ;
 int UVC_CTRL_DATA_RES ;
 int UVC_GET_DEF ;
 int UVC_GET_MAX ;
 int UVC_GET_MIN ;
 int UVC_GET_RES ;
 int uvc_ctrl_data (struct uvc_control*,int ) ;
 int uvc_query_ctrl (TYPE_3__*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int uvc_ctrl_populate_cache(struct uvc_video_chain *chain,
 struct uvc_control *ctrl)
{
 int ret;

 if (ctrl->info.flags & UVC_CONTROL_GET_DEF) {
  ret = uvc_query_ctrl(chain->dev, UVC_GET_DEF, ctrl->entity->id,
         chain->dev->intfnum, ctrl->info.selector,
         uvc_ctrl_data(ctrl, UVC_CTRL_DATA_DEF),
         ctrl->info.size);
  if (ret < 0)
   return ret;
 }

 if (ctrl->info.flags & UVC_CONTROL_GET_MIN) {
  ret = uvc_query_ctrl(chain->dev, UVC_GET_MIN, ctrl->entity->id,
         chain->dev->intfnum, ctrl->info.selector,
         uvc_ctrl_data(ctrl, UVC_CTRL_DATA_MIN),
         ctrl->info.size);
  if (ret < 0)
   return ret;
 }
 if (ctrl->info.flags & UVC_CONTROL_GET_MAX) {
  ret = uvc_query_ctrl(chain->dev, UVC_GET_MAX, ctrl->entity->id,
         chain->dev->intfnum, ctrl->info.selector,
         uvc_ctrl_data(ctrl, UVC_CTRL_DATA_MAX),
         ctrl->info.size);
  if (ret < 0)
   return ret;
 }
 if (ctrl->info.flags & UVC_CONTROL_GET_RES) {
  ret = uvc_query_ctrl(chain->dev, UVC_GET_RES, ctrl->entity->id,
         chain->dev->intfnum, ctrl->info.selector,
         uvc_ctrl_data(ctrl, UVC_CTRL_DATA_RES),
         ctrl->info.size);
  if (ret < 0)
   return ret;
 }

 ctrl->cached = 1;
 return 0;
}
