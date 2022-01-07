
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {size_t index; } ;
struct file {int dummy; } ;


 int DEB_D (char*) ;
 int DEB_EE (char*) ;
 int EINVAL ;
 size_t HEXIUM_INPUTS ;
 int * hexium_inputs ;
 int memcpy (struct v4l2_input*,int *,int) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *fh, struct v4l2_input *i)
{
 DEB_EE(("VIDIOC_ENUMINPUT %d.\n", i->index));

 if (i->index >= HEXIUM_INPUTS)
  return -EINVAL;

 memcpy(i, &hexium_inputs[i->index], sizeof(struct v4l2_input));

 DEB_D(("v4l2_ioctl: VIDIOC_ENUMINPUT %d.\n", i->index));
 return 0;
}
