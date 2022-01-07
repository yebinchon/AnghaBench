
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int dummy; } ;
struct sd {int sharpness; int color; int hue; int contrast; int brightness; } ;
struct TYPE_2__ {int npkt; int nmodes; int cam_mode; } ;
struct gspca_dev {int nbalt; TYPE_1__ cam; } ;


 int ARRAY_SIZE (int ) ;
 int BRIGHTNESS_DEF ;
 int COLOR_DEF ;
 int CONTRAST_DEF ;
 int HUE_DEF ;
 int SHARPNESS_DEF ;
 int vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;

 gspca_dev->cam.cam_mode = vga_mode;
 gspca_dev->cam.nmodes = ARRAY_SIZE(vga_mode);
 gspca_dev->cam.npkt = 128;


 sd->brightness = BRIGHTNESS_DEF;
 sd->contrast = CONTRAST_DEF;
 sd->hue = HUE_DEF;
 sd->color = COLOR_DEF;
 sd->sharpness = SHARPNESS_DEF;

 gspca_dev->nbalt = 4;

 return 0;
}
