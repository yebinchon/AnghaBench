
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ device_type; } ;
struct TYPE_4__ {TYPE_1__ pnp_id; } ;
struct camera_data {TYPE_2__ params; } ;


 int CPIA2_CMD_SET_VP_BRIGHTNESS ;
 int DBG (char*,unsigned char,unsigned char) ;
 scalar_t__ DEVICE_STV_672 ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,unsigned char) ;

void cpia2_set_brightness(struct camera_data *cam, unsigned char value)
{




 if (cam->params.pnp_id.device_type == DEVICE_STV_672 && value == 0)
  value++;
 DBG("Setting brightness to %d (0x%0x)\n", value, value);
 cpia2_do_command(cam,CPIA2_CMD_SET_VP_BRIGHTNESS, TRANSFER_WRITE,value);
}
