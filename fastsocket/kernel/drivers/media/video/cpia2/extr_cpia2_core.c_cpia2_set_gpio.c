
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gpio_direction; unsigned char gpio_data; } ;
struct TYPE_4__ {TYPE_1__ vp_params; } ;
struct camera_data {TYPE_2__ params; } ;


 int CPIA2_CMD_SET_VC_MP_GPIO_DATA ;
 int CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION ;
 int CPIA2_VC_MP_DIR_OUTPUT ;
 int cpia2_do_command (struct camera_data*,int ,int ,unsigned char) ;

int cpia2_set_gpio(struct camera_data *cam, unsigned char setting)
{
 int ret;






 ret = cpia2_do_command(cam,
          CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION,
          CPIA2_VC_MP_DIR_OUTPUT,
          255);
 if (ret < 0)
  return ret;
 cam->params.vp_params.gpio_direction = 255;

 ret = cpia2_do_command(cam,
          CPIA2_CMD_SET_VC_MP_GPIO_DATA,
          CPIA2_VC_MP_DIR_OUTPUT,
          setting);
 if (ret < 0)
  return ret;
 cam->params.vp_params.gpio_data = setting;

 return 0;
}
