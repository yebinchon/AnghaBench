
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_GetColourBalance ;
 int CPIA_COMMAND_GetExposure ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int save_camera_state(struct gspca_dev *gspca_dev)
{
 int ret;

 ret = do_command(gspca_dev, CPIA_COMMAND_GetColourBalance, 0, 0, 0, 0);
 if (ret)
  return ret;

 return do_command(gspca_dev, CPIA_COMMAND_GetExposure, 0, 0, 0, 0);
}
