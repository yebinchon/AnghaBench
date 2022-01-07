
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int dummy; } ;
struct sd {int sharpness; int whitebal; int saturation; int contrast; int brightness; } ;
struct TYPE_2__ {int no_urb_create; int nmodes; int cam_mode; } ;
struct gspca_dev {int nbalt; TYPE_1__ cam; } ;


 int ARRAY_SIZE (int ) ;
 int BRIGHTNESS_DEFAULT ;
 int CONTRAST_DEFAULT ;
 int SATURATION_DEFAULT ;
 int SHARPNESS_DEFAULT ;
 int WHITEBAL_DEFAULT ;
 int vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;

 gspca_dev->cam.cam_mode = vga_mode;
 gspca_dev->cam.nmodes = ARRAY_SIZE(vga_mode);
 gspca_dev->cam.no_urb_create = 1;


 gspca_dev->nbalt--;

 sd->brightness = BRIGHTNESS_DEFAULT;
 sd->contrast = CONTRAST_DEFAULT;
 sd->saturation = SATURATION_DEFAULT;
 sd->whitebal = WHITEBAL_DEFAULT;
 sd->sharpness = SHARPNESS_DEFAULT;

 return 0;
}
