
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int brightness; } ;
struct TYPE_4__ {int allowableOverExposure; } ;
struct TYPE_6__ {TYPE_2__ colourParams; TYPE_1__ flickerControl; } ;
struct sd {TYPE_3__ params; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int __s32 ;


 int command_setcolourparams (struct gspca_dev*) ;
 int command_setflickerctrl (struct gspca_dev*) ;
 int find_over_exposure (int ) ;

__attribute__((used)) static int sd_setbrightness(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret;

 sd->params.colourParams.brightness = val;
 sd->params.flickerControl.allowableOverExposure =
  find_over_exposure(sd->params.colourParams.brightness);
 if (gspca_dev->streaming) {
  ret = command_setcolourparams(gspca_dev);
  if (ret)
   return ret;
  return command_setflickerctrl(gspca_dev);
 }
 return 0;
}
