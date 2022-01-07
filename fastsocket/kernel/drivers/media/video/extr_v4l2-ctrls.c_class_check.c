
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl_handler {int ctrl_refs; } ;


 int EINVAL ;
 scalar_t__ find_ref_lock (struct v4l2_ctrl_handler*,int) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int class_check(struct v4l2_ctrl_handler *hdl, u32 ctrl_class)
{
 if (ctrl_class == 0)
  return list_empty(&hdl->ctrl_refs) ? -EINVAL : 0;
 return find_ref_lock(hdl, ctrl_class | 1) ? 0 : -EINVAL;
}
