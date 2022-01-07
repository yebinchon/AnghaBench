
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned char cam_register; int flicker_mode_req; int mains_frequency; } ;
struct TYPE_6__ {unsigned char exposure_modes; } ;
struct TYPE_5__ {scalar_t__ device_type; } ;
struct TYPE_8__ {TYPE_3__ flicker_control; TYPE_2__ vp_params; TYPE_1__ pnp_id; } ;
struct camera_data {TYPE_4__ params; } ;


 int CPIA2_CMD_GET_FLICKER_MODES ;
 int CPIA2_CMD_GET_VP_EXP_MODES ;
 int CPIA2_CMD_REHASH_VP4 ;
 int CPIA2_CMD_SET_FLICKER_MODES ;
 int CPIA2_CMD_SET_VP_EXP_MODES ;
 unsigned char CPIA2_VP_EXPOSURE_MODES_INHIBIT_FLICKER ;
 unsigned char CPIA2_VP_FLICKER_MODES_50HZ ;
 unsigned char CPIA2_VP_FLICKER_MODES_NEVER_FLICKER ;
 scalar_t__ DEVICE_STV_672 ;
 int EINVAL ;



 int TRANSFER_READ ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,int) ;

int cpia2_set_flicker_mode(struct camera_data *cam, int mode)
{
 unsigned char cam_reg;
 int err = 0;

 if(cam->params.pnp_id.device_type != DEVICE_STV_672)
  return -EINVAL;


 if((err = cpia2_do_command(cam, CPIA2_CMD_GET_FLICKER_MODES,
       TRANSFER_READ, 0)))
  return err;
 cam_reg = cam->params.flicker_control.cam_register;

 switch(mode) {
 case 128:
  cam_reg |= CPIA2_VP_FLICKER_MODES_NEVER_FLICKER;
  cam_reg &= ~CPIA2_VP_FLICKER_MODES_50HZ;
  break;
 case 129:
  cam_reg &= ~CPIA2_VP_FLICKER_MODES_NEVER_FLICKER;
  cam_reg &= ~CPIA2_VP_FLICKER_MODES_50HZ;
  break;
 case 130:
  cam_reg &= ~CPIA2_VP_FLICKER_MODES_NEVER_FLICKER;
  cam_reg |= CPIA2_VP_FLICKER_MODES_50HZ;
  break;
 default:
  return -EINVAL;
 }

 if((err = cpia2_do_command(cam, CPIA2_CMD_SET_FLICKER_MODES,
       TRANSFER_WRITE, cam_reg)))
  return err;


 if((err = cpia2_do_command(cam, CPIA2_CMD_GET_VP_EXP_MODES,
       TRANSFER_READ, 0)))
  return err;
 cam_reg = cam->params.vp_params.exposure_modes;

 if (mode == 128) {
  cam_reg |= CPIA2_VP_EXPOSURE_MODES_INHIBIT_FLICKER;
 } else {
  cam_reg &= ~CPIA2_VP_EXPOSURE_MODES_INHIBIT_FLICKER;
 }

 if((err = cpia2_do_command(cam, CPIA2_CMD_SET_VP_EXP_MODES,
       TRANSFER_WRITE, cam_reg)))
  return err;

 if((err = cpia2_do_command(cam, CPIA2_CMD_REHASH_VP4,
       TRANSFER_WRITE, 1)))
  return err;

 switch(mode) {
 case 128:
  cam->params.flicker_control.flicker_mode_req = mode;
  break;
 case 129:
  cam->params.flicker_control.flicker_mode_req = mode;
  cam->params.flicker_control.mains_frequency = 60;
  break;
 case 130:
  cam->params.flicker_control.flicker_mode_req = mode;
  cam->params.flicker_control.mains_frequency = 50;
  break;
 default:
  err = -EINVAL;
 }

 return err;
}
