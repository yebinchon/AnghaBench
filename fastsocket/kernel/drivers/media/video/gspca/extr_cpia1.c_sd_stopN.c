
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_GetCameraStatus ;
 int command_pause (struct gspca_dev*) ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;
 int goto_low_power (struct gspca_dev*) ;
 int save_camera_state (struct gspca_dev*) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 command_pause(gspca_dev);


 save_camera_state(gspca_dev);


 goto_low_power(gspca_dev);


 do_command(gspca_dev, CPIA_COMMAND_GetCameraStatus, 0, 0, 0, 0);
}
