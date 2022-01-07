
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saturation; int contrast; int brightness; } ;
struct TYPE_4__ {TYPE_1__ colourParams; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_SetColourParams ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int command_setcolourparams(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 return do_command(gspca_dev, CPIA_COMMAND_SetColourParams,
     sd->params.colourParams.brightness,
     sd->params.colourParams.contrast,
     sd->params.colourParams.saturation, 0);
}
