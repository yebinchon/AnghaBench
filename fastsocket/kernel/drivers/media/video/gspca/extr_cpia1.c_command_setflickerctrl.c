
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allowableOverExposure; int coarseJump; int flickerMode; } ;
struct TYPE_4__ {TYPE_1__ flickerControl; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_SetFlickerCtrl ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int command_setflickerctrl(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 return do_command(gspca_dev, CPIA_COMMAND_SetFlickerCtrl,
     sd->params.flickerControl.flickerMode,
     sd->params.flickerControl.coarseJump,
     sd->params.flickerControl.allowableOverExposure,
     0);
}
