
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int power_mode; } ;
struct TYPE_4__ {TYPE_1__ camera_state; } ;
struct camera_data {TYPE_2__ params; } ;


 int CPIA2_CMD_SET_SYSTEM_CTRL ;
 int LO_POWER_MODE ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,int ) ;

int cpia2_set_low_power(struct camera_data *cam)
{
 cam->params.camera_state.power_mode = LO_POWER_MODE;
 cpia2_do_command(cam, CPIA2_CMD_SET_SYSTEM_CTRL, TRANSFER_WRITE, 0);
 return 0;
}
