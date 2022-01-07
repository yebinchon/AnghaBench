
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device_id {int driver_info; } ;
struct sd {int colors; int contrast; int brightness; int subtype; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;
struct TYPE_3__ {int default_value; } ;
struct TYPE_4__ {TYPE_1__ qctrl; } ;


 int ARRAY_SIZE (int ) ;
 size_t MY_BRIGHTNESS ;
 size_t MY_COLOR ;
 size_t MY_CONTRAST ;
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
 sd->subtype = id->driver_info;
 sd->brightness = sd_ctrls[MY_BRIGHTNESS].qctrl.default_value;
 sd->contrast = sd_ctrls[MY_CONTRAST].qctrl.default_value;
 sd->colors = sd_ctrls[MY_COLOR].qctrl.default_value;

 return 0;
}
