
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; int idVendor; int idProduct; } ;
struct sd {int bridge; int flags; int backlight; int autogain; int exposure; int gain; int sharpness; int lightfreq; int vflip; int hflip; int colors; int contrast; int brightness; int sensor; } ;
struct gspca_dev {int dummy; } ;


 int AUTOGAIN_DEF ;
 int BACKLIGHT_DEF ;
 int BRIGHTNESS_DEF ;
 int COLOR_DEF ;
 int CONTRAST_DEF ;
 int EXPOSURE_DEF ;
 int FREQ_DEF ;
 int GAIN_DEF ;
 int HFLIP_DEF ;
 int SENSOR_POxxxx ;
 int SHARPNESS_DEF ;
 int VFLIP_DEF ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->bridge = id->driver_info >> 8;
 sd->flags = id->driver_info & 0xff;

 if (id->idVendor == 0x046d &&
     (id->idProduct == 0x0892 || id->idProduct == 0x0896))
  sd->sensor = SENSOR_POxxxx;

 sd->brightness = BRIGHTNESS_DEF;
 sd->contrast = CONTRAST_DEF;
 sd->colors = COLOR_DEF;
 sd->hflip = HFLIP_DEF;
 sd->vflip = VFLIP_DEF;
 sd->lightfreq = FREQ_DEF;
 sd->sharpness = SHARPNESS_DEF;
 sd->gain = GAIN_DEF;
 sd->exposure = EXPOSURE_DEF;
 sd->autogain = AUTOGAIN_DEF;
 sd->backlight = BACKLIGHT_DEF;

 return 0;
}
