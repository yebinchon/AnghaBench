
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {int dummy; } ;


 int CPIA2_CMD_GET_ASIC_TYPE ;
 int CPIA2_CMD_GET_PNP_ID ;
 int CPIA2_CMD_GET_SENSOR ;
 int CPIA2_CMD_GET_VERSION ;
 int CPIA2_CMD_GET_VP_DEVICE ;
 int TRANSFER_READ ;
 int cpia2_do_command (struct camera_data*,int ,int ,int ) ;

__attribute__((used)) static void cpia2_get_version_info(struct camera_data *cam)
{
 cpia2_do_command(cam, CPIA2_CMD_GET_VERSION, TRANSFER_READ, 0);
 cpia2_do_command(cam, CPIA2_CMD_GET_PNP_ID, TRANSFER_READ, 0);
 cpia2_do_command(cam, CPIA2_CMD_GET_ASIC_TYPE, TRANSFER_READ, 0);
 cpia2_do_command(cam, CPIA2_CMD_GET_SENSOR, TRANSFER_READ, 0);
 cpia2_do_command(cam, CPIA2_CMD_GET_VP_DEVICE, TRANSFER_READ, 0);
}
