
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; } ;
struct sd {int sensor; int type; int expo; int gain; } ;
struct cam {int bulk; int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int EXPO_DEF ;
 int GAIN_DEF ;
 int vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
  const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam = &gspca_dev->cam;

 sd->sensor = id->driver_info >> 8;
 sd->type = id->driver_info;

 cam->cam_mode = vga_mode;
 cam->nmodes = ARRAY_SIZE(vga_mode);

 cam->bulk = 1;

 sd->gain = GAIN_DEF;
 sd->expo = EXPO_DEF;

 return 0;
}
