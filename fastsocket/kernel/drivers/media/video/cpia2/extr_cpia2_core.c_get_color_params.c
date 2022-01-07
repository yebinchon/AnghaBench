
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {int dummy; } ;


 int CPIA2_CMD_GET_CONTRAST ;
 int CPIA2_CMD_GET_VP_BRIGHTNESS ;
 int CPIA2_CMD_GET_VP_SATURATION ;
 int TRANSFER_READ ;
 int cpia2_do_command (struct camera_data*,int ,int ,int ) ;

__attribute__((used)) static void get_color_params(struct camera_data *cam)
{
 cpia2_do_command(cam, CPIA2_CMD_GET_VP_BRIGHTNESS, TRANSFER_READ, 0);
 cpia2_do_command(cam, CPIA2_CMD_GET_VP_SATURATION, TRANSFER_READ, 0);
 cpia2_do_command(cam, CPIA2_CMD_GET_CONTRAST, TRANSFER_READ, 0);
}
