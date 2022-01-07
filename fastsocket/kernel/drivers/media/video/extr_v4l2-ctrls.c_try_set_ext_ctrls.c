
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {int error_idx; int count; int ctrl_class; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct ctrl_helper {int handled; } ;
typedef int helper ;


 int ARRAY_SIZE (struct ctrl_helper*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_CTRL_ID2CLASS (int ) ;
 int class_check (struct v4l2_ctrl_handler*,int ) ;
 int kfree (struct ctrl_helper*) ;
 struct ctrl_helper* kmalloc (int,int ) ;
 int prepare_ext_ctrls (struct v4l2_ctrl_handler*,struct v4l2_ext_controls*,struct ctrl_helper*,int) ;
 int try_or_set_ext_ctrls (struct v4l2_ctrl_handler*,struct v4l2_ext_controls*,struct ctrl_helper*,int) ;

__attribute__((used)) static int try_set_ext_ctrls(struct v4l2_ctrl_handler *hdl,
        struct v4l2_ext_controls *cs,
        bool set)
{
 struct ctrl_helper helper[4];
 struct ctrl_helper *helpers = helper;
 int ret;
 int i;

 cs->error_idx = cs->count;
 cs->ctrl_class = V4L2_CTRL_ID2CLASS(cs->ctrl_class);

 if (hdl == ((void*)0))
  return -EINVAL;

 if (cs->count == 0)
  return class_check(hdl, cs->ctrl_class);

 if (cs->count > ARRAY_SIZE(helper)) {
  helpers = kmalloc(sizeof(helper[0]) * cs->count, GFP_KERNEL);
  if (!helpers)
   return -ENOMEM;
 }
 ret = prepare_ext_ctrls(hdl, cs, helpers, !set);
 if (ret)
  goto free;


 ret = try_or_set_ext_ctrls(hdl, cs, helpers, 0);



 if (set)
  cs->error_idx = cs->count;
 if (!ret && set) {

  for (i = 0; i < cs->count; i++)
   helpers[i].handled = 0;
  ret = try_or_set_ext_ctrls(hdl, cs, helpers, 1);
 }

free:
 if (cs->count > ARRAY_SIZE(helper))
  kfree(helpers);
 return ret;
}
