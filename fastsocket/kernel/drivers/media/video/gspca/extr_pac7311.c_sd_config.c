
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int vflip; int hflip; int autogain; int exposure; int gain; int contrast; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int AUTOGAIN_DEF ;
 int CONTRAST_DEF ;
 int D_CONF ;
 int EXPOSURE_DEF ;
 int GAIN_DEF ;
 int HFLIP_DEF ;
 int PDEBUG (int ,char*) ;
 int VFLIP_DEF ;
 int vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;

 PDEBUG(D_CONF, "Find Sensor PAC7311");
 cam->cam_mode = vga_mode;
 cam->nmodes = ARRAY_SIZE(vga_mode);

 sd->contrast = CONTRAST_DEF;
 sd->gain = GAIN_DEF;
 sd->exposure = EXPOSURE_DEF;
 sd->autogain = AUTOGAIN_DEF;
 sd->hflip = HFLIP_DEF;
 sd->vflip = VFLIP_DEF;
 return 0;
}
