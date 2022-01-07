
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {int num_frames; } ;


 int EINVAL ;
 int sync (struct camera_data*,int) ;

__attribute__((used)) static int ioctl_sync(void *arg, struct camera_data *cam)
{
 int frame;

 frame = *(int*)arg;

 if (frame < 0 || frame >= cam->num_frames)
  return -EINVAL;

 return sync(cam, frame);
}
