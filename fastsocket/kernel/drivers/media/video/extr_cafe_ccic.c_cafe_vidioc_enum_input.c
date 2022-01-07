
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {scalar_t__ index; int name; int std; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_STD_ALL ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int cafe_vidioc_enum_input(struct file *filp, void *priv,
  struct v4l2_input *input)
{
 if (input->index != 0)
  return -EINVAL;

 input->type = V4L2_INPUT_TYPE_CAMERA;
 input->std = V4L2_STD_ALL;
 strcpy(input->name, "Camera");
 return 0;
}
