
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_device {int dummy; } ;
struct uvc_control_mapping {scalar_t__ selector; int entity; } ;
struct uvc_control_info {scalar_t__ index; int entity; } ;
struct TYPE_2__ {scalar_t__ selector; } ;
struct uvc_control {scalar_t__ index; TYPE_1__ info; int entity; int initialized; } ;


 int ARRAY_SIZE (void*) ;
 scalar_t__ UVC_ENTITY_TYPE (int ) ;
 scalar_t__ UVC_VC_EXTENSION_UNIT ;
 int __uvc_ctrl_add_mapping (struct uvc_device*,struct uvc_control*,struct uvc_control_mapping const*) ;
 int uvc_ctrl_add_info (struct uvc_device*,struct uvc_control*,struct uvc_control_info const*) ;
 void* uvc_ctrl_mappings ;
 void* uvc_ctrls ;
 scalar_t__ uvc_entity_match_guid (int ,int ) ;

__attribute__((used)) static void uvc_ctrl_init_ctrl(struct uvc_device *dev, struct uvc_control *ctrl)
{
 const struct uvc_control_info *info = uvc_ctrls;
 const struct uvc_control_info *iend = info + ARRAY_SIZE(uvc_ctrls);
 const struct uvc_control_mapping *mapping = uvc_ctrl_mappings;
 const struct uvc_control_mapping *mend =
  mapping + ARRAY_SIZE(uvc_ctrl_mappings);






 if (UVC_ENTITY_TYPE(ctrl->entity) == UVC_VC_EXTENSION_UNIT)
  return;

 for (; info < iend; ++info) {
  if (uvc_entity_match_guid(ctrl->entity, info->entity) &&
      ctrl->index == info->index) {
   uvc_ctrl_add_info(dev, ctrl, info);
   break;
   }
 }

 if (!ctrl->initialized)
  return;

 for (; mapping < mend; ++mapping) {
  if (uvc_entity_match_guid(ctrl->entity, mapping->entity) &&
      ctrl->info.selector == mapping->selector)
   __uvc_ctrl_add_mapping(dev, ctrl, mapping);
 }
}
