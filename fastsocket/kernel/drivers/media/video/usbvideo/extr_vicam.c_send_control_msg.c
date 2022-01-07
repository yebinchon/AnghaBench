
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vicam_camera {int cam_lock; scalar_t__ udev; } ;


 int ENODEV ;
 int __send_control_msg (struct vicam_camera*,int ,int ,int ,unsigned char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int send_control_msg(struct vicam_camera *cam,
       u8 request,
       u16 value,
       u16 index,
       unsigned char *cp,
       u16 size)
{
 int status = -ENODEV;
 mutex_lock(&cam->cam_lock);
 if (cam->udev) {
  status = __send_control_msg(cam, request, value,
         index, cp, size);
 }
 mutex_unlock(&cam->cam_lock);
 return status;
}
