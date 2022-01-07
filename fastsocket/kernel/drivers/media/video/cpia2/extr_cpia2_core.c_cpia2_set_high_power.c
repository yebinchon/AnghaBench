
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int system_ctrl; int power_mode; } ;
struct TYPE_4__ {int system_state; } ;
struct TYPE_6__ {TYPE_2__ camera_state; TYPE_1__ vp_params; } ;
struct camera_data {TYPE_3__ params; } ;


 int CPIA2_CMD_CLEAR_V2W_ERR ;
 int CPIA2_CMD_GET_SYSTEM_CTRL ;
 int CPIA2_CMD_GET_VP_SYSTEM_STATE ;
 int CPIA2_CMD_SET_SYSTEM_CTRL ;
 int CPIA2_SYSTEM_CONTROL_V2W_ERR ;
 int CPIA2_VP_SYSTEMSTATE_HK_ALIVE ;
 int DBG (char*) ;
 int EIO ;
 int ERR (char*) ;
 int HI_POWER_MODE ;
 int LO_POWER_MODE ;
 int TRANSFER_READ ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,int) ;

__attribute__((used)) static int cpia2_set_high_power(struct camera_data *cam)
{
 int i;
 for (i = 0; i <= 50; i++) {

  cpia2_do_command(cam,CPIA2_CMD_GET_SYSTEM_CTRL,TRANSFER_READ,0);


  if(cam->params.camera_state.system_ctrl &
     CPIA2_SYSTEM_CONTROL_V2W_ERR)
   cpia2_do_command(cam, CPIA2_CMD_CLEAR_V2W_ERR,
      TRANSFER_WRITE, 0);


  cpia2_do_command(cam, CPIA2_CMD_SET_SYSTEM_CTRL,
     TRANSFER_WRITE, 1);


  cpia2_do_command(cam, CPIA2_CMD_GET_VP_SYSTEM_STATE,
     TRANSFER_READ, 0);
  if (cam->params.vp_params.system_state &
      CPIA2_VP_SYSTEMSTATE_HK_ALIVE) {
   break;
  } else if (i == 50) {
   cam->params.camera_state.power_mode = LO_POWER_MODE;
   ERR("Camera did not wake up\n");
   return -EIO;
  }
 }

 DBG("System now in high power state\n");
 cam->params.camera_state.power_mode = HI_POWER_MODE;
 return 0;
}
