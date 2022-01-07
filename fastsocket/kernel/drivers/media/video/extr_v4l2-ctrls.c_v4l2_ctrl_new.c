
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int lock; int ctrls; scalar_t__ error; } ;
struct TYPE_2__ {char* string; scalar_t__ val; } ;
struct v4l2_ctrl {char const* name; int type; char const* const* qmenu; char* string; int node; scalar_t__ minimum; TYPE_1__ cur; scalar_t__ default_value; scalar_t__ val; void* priv; scalar_t__ step; scalar_t__ maximum; scalar_t__ flags; scalar_t__ id; struct v4l2_ctrl_ops const* ops; struct v4l2_ctrl_handler* handler; } ;
typedef scalar_t__ s32 ;
typedef enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;


 int ENOMEM ;
 int ERANGE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ V4L2_CID_PRIVATE_BASE ;
 scalar_t__ V4L2_CTRL_FLAG_READ_ONLY ;
 scalar_t__ V4L2_CTRL_FLAG_WRITE_ONLY ;
 int V4L2_CTRL_TYPE_BOOLEAN ;
 int V4L2_CTRL_TYPE_BUTTON ;
 int V4L2_CTRL_TYPE_CTRL_CLASS ;
 int V4L2_CTRL_TYPE_INTEGER ;
 int V4L2_CTRL_TYPE_MENU ;
 int V4L2_CTRL_TYPE_STRING ;
 scalar_t__ handler_new_ref (struct v4l2_ctrl_handler*,struct v4l2_ctrl*) ;
 int handler_set_err (struct v4l2_ctrl_handler*,int ) ;
 int kfree (struct v4l2_ctrl*) ;
 struct v4l2_ctrl* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (char*,char,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
   const struct v4l2_ctrl_ops *ops,
   u32 id, const char *name, enum v4l2_ctrl_type type,
   s32 min, s32 max, u32 step, s32 def,
   u32 flags, const char * const *qmenu, void *priv)
{
 struct v4l2_ctrl *ctrl;
 unsigned sz_extra = 0;

 if (hdl->error)
  return ((void*)0);


 if (id == 0 || name == ((void*)0) || id >= V4L2_CID_PRIVATE_BASE ||
     max < min ||
     (type == V4L2_CTRL_TYPE_INTEGER && step == 0) ||
     (type == V4L2_CTRL_TYPE_MENU && qmenu == ((void*)0)) ||
     (type == V4L2_CTRL_TYPE_STRING && max == 0)) {
  handler_set_err(hdl, -ERANGE);
  return ((void*)0);
 }
 if ((type == V4L2_CTRL_TYPE_INTEGER ||
      type == V4L2_CTRL_TYPE_MENU ||
      type == V4L2_CTRL_TYPE_BOOLEAN) &&
     (def < min || def > max)) {
  handler_set_err(hdl, -ERANGE);
  return ((void*)0);
 }

 if (type == V4L2_CTRL_TYPE_BUTTON)
  flags |= V4L2_CTRL_FLAG_WRITE_ONLY;
 else if (type == V4L2_CTRL_TYPE_CTRL_CLASS)
  flags |= V4L2_CTRL_FLAG_READ_ONLY;
 else if (type == V4L2_CTRL_TYPE_STRING)
  sz_extra += 2 * (max + 1);

 ctrl = kzalloc(sizeof(*ctrl) + sz_extra, GFP_KERNEL);
 if (ctrl == ((void*)0)) {
  handler_set_err(hdl, -ENOMEM);
  return ((void*)0);
 }

 INIT_LIST_HEAD(&ctrl->node);
 ctrl->handler = hdl;
 ctrl->ops = ops;
 ctrl->id = id;
 ctrl->name = name;
 ctrl->type = type;
 ctrl->flags = flags;
 ctrl->minimum = min;
 ctrl->maximum = max;
 ctrl->step = step;
 ctrl->qmenu = qmenu;
 ctrl->priv = priv;
 ctrl->cur.val = ctrl->val = ctrl->default_value = def;

 if (ctrl->type == V4L2_CTRL_TYPE_STRING) {
  ctrl->cur.string = (char *)&ctrl[1] + sz_extra - (max + 1);
  ctrl->string = (char *)&ctrl[1] + sz_extra - 2 * (max + 1);
  if (ctrl->minimum)
   memset(ctrl->cur.string, ' ', ctrl->minimum);
 }
 if (handler_new_ref(hdl, ctrl)) {
  kfree(ctrl);
  return ((void*)0);
 }
 mutex_lock(&hdl->lock);
 list_add_tail(&ctrl->node, &hdl->ctrls);
 mutex_unlock(&hdl->lock);
 return ctrl;
}
