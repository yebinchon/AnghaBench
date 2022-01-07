
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ width; scalar_t__ height; } ;
struct v4l2_frmsizeenum {size_t index; TYPE_1__ discrete; int type; } ;
struct ov7670_win_size {scalar_t__ width; scalar_t__ height; } ;
struct ov7670_info {scalar_t__ min_width; scalar_t__ min_height; } ;
typedef size_t __u32 ;


 int EINVAL ;
 int N_WIN_SIZES ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 struct ov7670_win_size* ov7670_win_sizes ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_enum_framesizes(struct v4l2_subdev *sd,
  struct v4l2_frmsizeenum *fsize)
{
 struct ov7670_info *info = to_state(sd);
 int i;
 int num_valid = -1;
 __u32 index = fsize->index;





 for (i = 0; i < N_WIN_SIZES; i++) {
  struct ov7670_win_size *win = &ov7670_win_sizes[index];
  if (info->min_width && win->width < info->min_width)
   continue;
  if (info->min_height && win->height < info->min_height)
   continue;
  if (index == ++num_valid) {
   fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
   fsize->discrete.width = win->width;
   fsize->discrete.height = win->height;
   return 0;
  }
 }

 return -EINVAL;
}
