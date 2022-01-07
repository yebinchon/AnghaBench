
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vicam_camera {int dummy; } ;


 int send_control_msg (struct vicam_camera*,int,int,int ,int *,int ) ;

__attribute__((used)) static int
set_camera_power(struct vicam_camera *cam, int state)
{
 int status;

 if ((status = send_control_msg(cam, 0x50, state, 0, ((void*)0), 0)) < 0)
  return status;

 if (state) {
  send_control_msg(cam, 0x55, 1, 0, ((void*)0), 0);
 }

 return 0;
}
