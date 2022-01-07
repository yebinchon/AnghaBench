
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ asic_id; } ;
struct TYPE_4__ {TYPE_1__ version; } ;
struct camera_data {int mmapped; TYPE_2__ params; } ;


 scalar_t__ CPIA2_ASIC_672 ;
 int CPIA2_CMD_SET_VC_MP_GPIO_DATA ;
 int CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION ;
 int DBG (char*) ;
 int ENODEV ;
 int ERR (char*,scalar_t__) ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,int ) ;
 int cpia2_get_version_info (struct camera_data*) ;
 int cpia2_set_high_power (struct camera_data*) ;
 int cpia2_set_low_power (struct camera_data*) ;
 int reset_camera_struct (struct camera_data*) ;

int cpia2_init_camera(struct camera_data *cam)
{
 DBG("Start\n");

 cam->mmapped = 0;


 cpia2_set_high_power(cam);
 cpia2_get_version_info(cam);
 if (cam->params.version.asic_id != CPIA2_ASIC_672) {
  ERR("Device IO error (asicID has incorrect value of 0x%X\n",
      cam->params.version.asic_id);
  return -ENODEV;
 }


 cpia2_do_command(cam, CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION,
    TRANSFER_WRITE, 0);
 cpia2_do_command(cam, CPIA2_CMD_SET_VC_MP_GPIO_DATA,
    TRANSFER_WRITE, 0);


 reset_camera_struct(cam);

 cpia2_set_low_power(cam);

 DBG("End\n");

 return 0;
}
