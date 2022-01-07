
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int value; int id; } ;
struct cafe_camera {int dummy; } ;
typedef int ctrl ;


 int V4L2_CID_VFLIP ;
 int core ;
 int flip ;
 int memset (struct v4l2_control*,int ,int) ;
 int s_ctrl ;
 int sensor_call (struct cafe_camera*,int ,int ,struct v4l2_control*) ;

__attribute__((used)) static int cafe_cam_set_flip(struct cafe_camera *cam)
{
 struct v4l2_control ctrl;

 memset(&ctrl, 0, sizeof(ctrl));
 ctrl.id = V4L2_CID_VFLIP;
 ctrl.value = flip;
 return sensor_call(cam, core, s_ctrl, &ctrl);
}
