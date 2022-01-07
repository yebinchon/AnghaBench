
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dummy; } ;


 int core ;
 int reset ;
 int sensor_call (struct cafe_camera*,int ,int ,int ) ;

__attribute__((used)) static int __cafe_cam_reset(struct cafe_camera *cam)
{
 return sensor_call(cam, core, reset, 0);
}
