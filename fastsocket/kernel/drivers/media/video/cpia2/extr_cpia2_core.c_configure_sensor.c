
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sensor_flags; } ;
struct TYPE_4__ {TYPE_1__ version; } ;
struct camera_data {TYPE_2__ params; } ;







 int EINVAL ;
 int config_sensor_410 (struct camera_data*,int,int) ;
 int config_sensor_500 (struct camera_data*,int,int) ;

__attribute__((used)) static int configure_sensor(struct camera_data *cam,
       int req_width, int req_height)
{
 int retval;

 switch (cam->params.version.sensor_flags) {
 case 132:
 case 131:
 case 130:
 case 129:
  retval = config_sensor_410(cam, req_width, req_height);
  break;
 case 128:
  retval = config_sensor_500(cam, req_width, req_height);
  break;
 default:
  return -EINVAL;
 }

 return retval;
}
