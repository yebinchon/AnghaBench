
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {int dummy; } ;


 int CPIA2_CMD_SET_WAKEUP ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,int ) ;

__attribute__((used)) static void wake_system(struct camera_data *cam)
{
 cpia2_do_command(cam, CPIA2_CMD_SET_WAKEUP, TRANSFER_WRITE, 0);
}
