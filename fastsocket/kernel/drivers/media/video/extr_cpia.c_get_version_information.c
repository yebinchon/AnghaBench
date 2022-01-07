
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_data {int dummy; } ;


 int CPIA_COMMAND_GetCPIAVersion ;
 int CPIA_COMMAND_GetPnPID ;
 int do_command (struct cam_data*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void get_version_information(struct cam_data *cam)
{

 do_command(cam, CPIA_COMMAND_GetCPIAVersion, 0, 0, 0, 0);


 do_command(cam, CPIA_COMMAND_GetPnPID, 0, 0, 0, 0);
}
