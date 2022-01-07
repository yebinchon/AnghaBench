
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int backlight; int brightness; int sharpness; int contrast; int gamma; int whitebal; int mirror; int flip; int AC50Hz; scalar_t__ saturation; scalar_t__ hue; } ;
struct TYPE_3__ {int brightness; int sharpness; int saturation; int AC50Hz; scalar_t__ flip; scalar_t__ mirror; scalar_t__ whitebal; scalar_t__ hue; scalar_t__ gamma; scalar_t__ contrast; scalar_t__ backlight; } ;
struct sd {int dev_post_unset_alt; int dev_init_pre_alt; int dev_configure_alt; int dev_init_at_startup; int dev_camera_settings; TYPE_2__ vmax; TYPE_1__ vcur; } ;
struct gspca_dev {int dummy; } ;


 int mi2020_camera_settings ;
 int mi2020_configure_alt ;
 int mi2020_init_at_startup ;
 int mi2020_init_pre_alt ;
 int mi2020_post_unset_alt ;

void mi2020_init_settings(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->vcur.backlight = 0;
 sd->vcur.brightness = 70;
 sd->vcur.sharpness = 20;
 sd->vcur.contrast = 0;
 sd->vcur.gamma = 0;
 sd->vcur.hue = 0;
 sd->vcur.saturation = 60;
 sd->vcur.whitebal = 0;
 sd->vcur.mirror = 0;
 sd->vcur.flip = 0;
 sd->vcur.AC50Hz = 1;

 sd->vmax.backlight = 64;
 sd->vmax.brightness = 128;
 sd->vmax.sharpness = 40;
 sd->vmax.contrast = 3;
 sd->vmax.gamma = 2;
 sd->vmax.hue = 0 + 1;
 sd->vmax.saturation = 0;
 sd->vmax.whitebal = 2;
 sd->vmax.mirror = 1;
 sd->vmax.flip = 1;
 sd->vmax.AC50Hz = 1;

 sd->dev_camera_settings = mi2020_camera_settings;
 sd->dev_init_at_startup = mi2020_init_at_startup;
 sd->dev_configure_alt = mi2020_configure_alt;
 sd->dev_init_pre_alt = mi2020_init_pre_alt;
 sd->dev_post_unset_alt = mi2020_post_unset_alt;
}
