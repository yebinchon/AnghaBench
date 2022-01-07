
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {scalar_t__ type; int id; } ;
struct v4l2_ext_control {int id; } ;
struct file {int dummy; } ;


 scalar_t__ V4L2_CTRL_TYPE_MENU ;
 int cx18_queryctrl (struct file*,void*,struct v4l2_queryctrl*) ;
 int v4l2_ctrl_check (struct v4l2_ext_control*,struct v4l2_queryctrl*,char const* const*) ;
 char** v4l2_ctrl_get_menu (int ) ;

__attribute__((used)) static int cx18_try_ctrl(struct file *file, void *fh,
     struct v4l2_ext_control *vctrl)
{
 struct v4l2_queryctrl qctrl;
 const char * const *menu_items = ((void*)0);
 int err;

 qctrl.id = vctrl->id;
 err = cx18_queryctrl(file, fh, &qctrl);
 if (err)
  return err;
 if (qctrl.type == V4L2_CTRL_TYPE_MENU)
  menu_items = v4l2_ctrl_get_menu(qctrl.id);
 return v4l2_ctrl_check(vctrl, &qctrl, menu_items);
}
