
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_input {scalar_t__ index; int name; int status; int type; } ;
struct TYPE_3__ {int input_flags; } ;
struct gspca_dev {TYPE_2__* sd_desc; TYPE_1__ cam; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int name; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
    struct v4l2_input *input)
{
 struct gspca_dev *gspca_dev = priv;

 if (input->index != 0)
  return -EINVAL;
 input->type = V4L2_INPUT_TYPE_CAMERA;
 input->status = gspca_dev->cam.input_flags;
 strncpy(input->name, gspca_dev->sd_desc->name,
  sizeof input->name);
 return 0;
}
