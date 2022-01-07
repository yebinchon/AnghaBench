
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {scalar_t__ index; int name; int std; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ NUM_INPUTS ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_STD_525_60 ;
 int sprintf (int ,char*,scalar_t__) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
    struct v4l2_input *inp)
{
 if (inp->index >= NUM_INPUTS)
  return -EINVAL;

 inp->type = V4L2_INPUT_TYPE_CAMERA;
 inp->std = V4L2_STD_525_60;
 sprintf(inp->name, "Camera %u", inp->index);

 return (0);
}
