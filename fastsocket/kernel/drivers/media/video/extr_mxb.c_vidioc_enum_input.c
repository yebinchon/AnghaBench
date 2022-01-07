
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {size_t index; } ;
struct file {int dummy; } ;


 int DEB_EE (char*) ;
 int EINVAL ;
 size_t MXB_INPUTS ;
 int memcpy (struct v4l2_input*,int *,int) ;
 int * mxb_inputs ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *fh, struct v4l2_input *i)
{
 DEB_EE(("VIDIOC_ENUMINPUT %d.\n", i->index));
 if (i->index >= MXB_INPUTS)
  return -EINVAL;
 memcpy(i, &mxb_inputs[i->index], sizeof(struct v4l2_input));
 return 0;
}
