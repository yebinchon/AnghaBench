
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;
typedef int s32 ;
typedef enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;


 int EINVAL ;
 int V4L2_CTRL_TYPE_MENU ;
 int handler_set_err (struct v4l2_ctrl_handler*,int ) ;
 int v4l2_ctrl_fill (int ,char const**,int*,int *,int *,int *,int *,int *) ;
 char** v4l2_ctrl_get_menu (int ) ;
 struct v4l2_ctrl* v4l2_ctrl_new (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,char const*,int,int ,int ,int ,int ,int ,char const* const*,int *) ;

struct v4l2_ctrl *v4l2_ctrl_new_std_menu(struct v4l2_ctrl_handler *hdl,
   const struct v4l2_ctrl_ops *ops,
   u32 id, s32 max, s32 mask, s32 def)
{
 const char * const *qmenu = v4l2_ctrl_get_menu(id);
 const char *name;
 enum v4l2_ctrl_type type;
 s32 min;
 s32 step;
 u32 flags;

 v4l2_ctrl_fill(id, &name, &type, &min, &max, &step, &def, &flags);
 if (type != V4L2_CTRL_TYPE_MENU) {
  handler_set_err(hdl, -EINVAL);
  return ((void*)0);
 }
 return v4l2_ctrl_new(hdl, ops, id, name, type,
        0, max, mask, def, flags, qmenu, ((void*)0));
}
