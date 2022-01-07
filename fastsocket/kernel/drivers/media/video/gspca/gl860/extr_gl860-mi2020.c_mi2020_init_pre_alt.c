
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hue; int brightness; int sharpness; scalar_t__ backlight; scalar_t__ gamma; scalar_t__ contrast; } ;
struct sd {TYPE_1__ vold; scalar_t__ mirrorMask; } ;
struct gspca_dev {int dummy; } ;


 int mi2020_init_post_alt (struct gspca_dev*) ;

__attribute__((used)) static int mi2020_init_pre_alt(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->mirrorMask = 0;
 sd->vold.hue = -1;


 sd->vold.brightness = -1;
 sd->vold.sharpness = -1;


 sd->vold.contrast = 0;
 sd->vold.gamma = 0;
 sd->vold.backlight = 0;

 mi2020_init_post_alt(gspca_dev);

 return 0;
}
