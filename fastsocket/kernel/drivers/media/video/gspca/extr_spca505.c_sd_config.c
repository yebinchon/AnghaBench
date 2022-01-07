
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {scalar_t__ driver_info; } ;
struct sd {scalar_t__ subtype; int brightness; } ;
struct cam {void* nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 void* ARRAY_SIZE (int ) ;
 int BRIGHTNESS_DEF ;
 scalar_t__ IntelPCCameraPro ;
 int vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;
 cam->cam_mode = vga_mode;
 sd->subtype = id->driver_info;
 if (sd->subtype != IntelPCCameraPro)
  cam->nmodes = ARRAY_SIZE(vga_mode);
 else
  cam->nmodes = ARRAY_SIZE(vga_mode) - 1;
 sd->brightness = BRIGHTNESS_DEF;

 return 0;
}
