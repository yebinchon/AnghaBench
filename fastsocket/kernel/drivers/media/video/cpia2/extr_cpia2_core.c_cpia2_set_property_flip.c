
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char user_effects; } ;
struct TYPE_4__ {TYPE_1__ vp_params; } ;
struct camera_data {TYPE_2__ params; } ;


 int CPIA2_CMD_GET_USER_EFFECTS ;
 int CPIA2_CMD_SET_USER_EFFECTS ;
 unsigned char CPIA2_VP_USER_EFFECTS_FLIP ;
 int TRANSFER_READ ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,unsigned char) ;

void cpia2_set_property_flip(struct camera_data *cam, int prop_val)
{
 unsigned char cam_reg;

 cpia2_do_command(cam, CPIA2_CMD_GET_USER_EFFECTS, TRANSFER_READ, 0);
 cam_reg = cam->params.vp_params.user_effects;

 if (prop_val)
 {
  cam_reg |= CPIA2_VP_USER_EFFECTS_FLIP;
 }
 else
 {
  cam_reg &= ~CPIA2_VP_USER_EFFECTS_FLIP;
 }
 cpia2_do_command(cam, CPIA2_CMD_SET_USER_EFFECTS, TRANSFER_WRITE,
    cam_reg);
}
