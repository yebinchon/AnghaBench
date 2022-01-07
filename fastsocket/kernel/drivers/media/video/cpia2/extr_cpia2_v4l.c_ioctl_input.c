
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {scalar_t__ index; int type; int name; } ;
struct camera_data {int dummy; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 unsigned int VIDIOC_G_INPUT ;
 int memset (struct v4l2_input*,int ,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int ioctl_input(unsigned int ioclt_nr,void *arg,struct camera_data *cam)
{
 struct v4l2_input *i = arg;

 if(ioclt_nr != VIDIOC_G_INPUT) {
  if (i->index != 0)
         return -EINVAL;
 }

 memset(i, 0, sizeof(*i));
 strcpy(i->name, "Camera");
 i->type = V4L2_INPUT_TYPE_CAMERA;

 return 0;
}
