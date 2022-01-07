
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device_id {int dummy; } ;
struct sd {int hue; int colors; int contrast; int brightness; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;
struct TYPE_3__ {int default_value; } ;
struct TYPE_4__ {TYPE_1__ qctrl; } ;


 int ARRAY_SIZE (int ) ;
 size_t SD_BRIGHTNESS ;
 size_t SD_COLOR ;
 size_t SD_CONTRAST ;
 size_t SD_HUE ;
 TYPE_2__* sd_ctrls ;
 int vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;
 cam->cam_mode = vga_mode;
 cam->nmodes = ARRAY_SIZE(vga_mode);
 sd->brightness = sd_ctrls[SD_BRIGHTNESS].qctrl.default_value;
 sd->contrast = sd_ctrls[SD_CONTRAST].qctrl.default_value;
 sd->colors = sd_ctrls[SD_COLOR].qctrl.default_value;
 sd->hue = sd_ctrls[SD_HUE].qctrl.default_value;
 return 0;
}
