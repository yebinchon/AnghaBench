
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char contrast; } ;
struct TYPE_4__ {TYPE_1__ color_params; } ;
struct camera_data {TYPE_2__ params; } ;


 int CPIA2_CMD_SET_CONTRAST ;
 int DBG (char*,unsigned char,unsigned char) ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,unsigned char) ;

void cpia2_set_contrast(struct camera_data *cam, unsigned char value)
{
 DBG("Setting contrast to %d (0x%0x)\n", value, value);
 cam->params.color_params.contrast = value;
 cpia2_do_command(cam, CPIA2_CMD_SET_CONTRAST, TRANSFER_WRITE, value);
}
