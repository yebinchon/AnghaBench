
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_EndStreamCap ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int command_pause(struct gspca_dev *gspca_dev)
{
 return do_command(gspca_dev, CPIA_COMMAND_EndStreamCap, 0, 0, 0, 0);
}
