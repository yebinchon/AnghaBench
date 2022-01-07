
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl_config {char* name; char** qmenu; int type; int is_volatile; int is_private; int menu_skip_mask; int id; int ops; int def; int step; int max; int min; int flags; } ;
struct v4l2_ctrl {int is_volatile; int is_private; } ;
typedef int s32 ;
typedef enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;


 scalar_t__ V4L2_CTRL_TYPE_MENU ;
 int WARN_ON (int ) ;
 int v4l2_ctrl_fill (int ,char const**,int*,int *,int *,int *,int *,int *) ;
 char** v4l2_ctrl_get_menu (int ) ;
 struct v4l2_ctrl* v4l2_ctrl_new (struct v4l2_ctrl_handler*,int ,int ,char const*,int,int ,int ,int ,int ,int ,char const* const*,void*) ;

struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler *hdl,
   const struct v4l2_ctrl_config *cfg, void *priv)
{
 bool is_menu;
 struct v4l2_ctrl *ctrl;
 const char *name = cfg->name;
 const char * const *qmenu = cfg->qmenu;
 enum v4l2_ctrl_type type = cfg->type;
 u32 flags = cfg->flags;
 s32 min = cfg->min;
 s32 max = cfg->max;
 u32 step = cfg->step;
 s32 def = cfg->def;

 if (name == ((void*)0))
  v4l2_ctrl_fill(cfg->id, &name, &type, &min, &max, &step,
        &def, &flags);

 is_menu = (cfg->type == V4L2_CTRL_TYPE_MENU);
 if (is_menu)
  WARN_ON(step);
 else
  WARN_ON(cfg->menu_skip_mask);
 if (is_menu && qmenu == ((void*)0))
  qmenu = v4l2_ctrl_get_menu(cfg->id);

 ctrl = v4l2_ctrl_new(hdl, cfg->ops, cfg->id, name,
   type, min, max,
   is_menu ? cfg->menu_skip_mask : step,
   def, flags, qmenu, priv);
 if (ctrl) {
  ctrl->is_private = cfg->is_private;
  ctrl->is_volatile = cfg->is_volatile;
 }
 return ctrl;
}
