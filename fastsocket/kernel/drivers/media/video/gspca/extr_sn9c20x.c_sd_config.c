
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; } ;
struct sd {int sensor; int i2c_addr; int flags; int exposure_step; int quality; int auto_exposure; int gain; int exposure; int vflip; int hflip; int blue; int red; int gamma; int hue; int saturation; int contrast; int brightness; scalar_t__ older_step; scalar_t__ old_step; } ;
struct cam {void* nmodes; void* cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 void* ARRAY_SIZE (void*) ;
 int AUTO_EXPOSURE_DEFAULT ;
 int BLUE_DEFAULT ;
 int BRIGHTNESS_DEFAULT ;
 int CONTRAST_DEFAULT ;
 int EXPOSURE_DEFAULT ;
 int GAIN_DEFAULT ;
 int GAMMA_DEFAULT ;
 int HFLIP_DEFAULT ;
 int HUE_DEFAULT ;
 int RED_DEFAULT ;
 int SATURATION_DEFAULT ;





 int VFLIP_DEFAULT ;
 void* mono_mode ;
 void* sxga_mode ;
 void* vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;

 sd->sensor = (id->driver_info >> 8) & 0xff;
 sd->i2c_addr = id->driver_info & 0xff;
 sd->flags = (id->driver_info >> 16) & 0xff;

 switch (sd->sensor) {
 case 130:
 case 131:
 case 129:
 case 128:
  cam->cam_mode = sxga_mode;
  cam->nmodes = ARRAY_SIZE(sxga_mode);
  break;
 case 132:
  cam->cam_mode = mono_mode;
  cam->nmodes = ARRAY_SIZE(mono_mode);
  break;
 default:
  cam->cam_mode = vga_mode;
  cam->nmodes = ARRAY_SIZE(vga_mode);
  break;
 }

 sd->old_step = 0;
 sd->older_step = 0;
 sd->exposure_step = 16;

 sd->brightness = BRIGHTNESS_DEFAULT;
 sd->contrast = CONTRAST_DEFAULT;
 sd->saturation = SATURATION_DEFAULT;
 sd->hue = HUE_DEFAULT;
 sd->gamma = GAMMA_DEFAULT;
 sd->red = RED_DEFAULT;
 sd->blue = BLUE_DEFAULT;

 sd->hflip = HFLIP_DEFAULT;
 sd->vflip = VFLIP_DEFAULT;
 sd->exposure = EXPOSURE_DEFAULT;
 sd->gain = GAIN_DEFAULT;
 sd->auto_exposure = AUTO_EXPOSURE_DEFAULT;

 sd->quality = 95;

 return 0;
}
