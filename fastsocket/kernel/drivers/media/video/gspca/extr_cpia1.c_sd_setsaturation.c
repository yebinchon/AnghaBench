
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saturation; } ;
struct TYPE_4__ {TYPE_1__ colourParams; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int __s32 ;


 int command_setcolourparams (struct gspca_dev*) ;

__attribute__((used)) static int sd_setsaturation(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->params.colourParams.saturation = val;
 if (gspca_dev->streaming)
  return command_setcolourparams(gspca_dev);

 return 0;
}
