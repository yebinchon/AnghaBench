
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; } ;
struct sd {int flags; int vflip; int hflip; int autogain; int exposure; int gain; int blue_balance; int red_balance; int white_balance; int colors; int contrast; int brightness; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int AUTOGAIN_DEF ;
 int BLUEBALANCE_DEF ;
 int BRIGHTNESS_DEF ;
 int COLOR_DEF ;
 int CONTRAST_DEF ;
 int D_CONF ;
 int EXPOSURE_DEF ;
 int GAIN_DEF ;
 int HFLIP_DEF ;
 int PDEBUG (int ,char*) ;
 int REDBALANCE_DEF ;
 int VFLIP_DEF ;
 int WHITEBALANCE_DEF ;
 int vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;

 PDEBUG(D_CONF, "Find Sensor PAC7302");
 cam->cam_mode = vga_mode;
 cam->nmodes = ARRAY_SIZE(vga_mode);

 sd->brightness = BRIGHTNESS_DEF;
 sd->contrast = CONTRAST_DEF;
 sd->colors = COLOR_DEF;
 sd->white_balance = WHITEBALANCE_DEF;
 sd->red_balance = REDBALANCE_DEF;
 sd->blue_balance = BLUEBALANCE_DEF;
 sd->gain = GAIN_DEF;
 sd->exposure = EXPOSURE_DEF;
 sd->autogain = AUTOGAIN_DEF;
 sd->hflip = HFLIP_DEF;
 sd->vflip = VFLIP_DEF;
 sd->flags = id->driver_info;
 return 0;
}
