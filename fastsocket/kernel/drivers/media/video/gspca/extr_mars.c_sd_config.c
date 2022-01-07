
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int quality; int ctrls; } ;
struct cam {int ctrls; int nmodes; int cam_mode; } ;
struct gspca_dev {int nbalt; struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int QUALITY_DEF ;
 int vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;
 cam->cam_mode = vga_mode;
 cam->nmodes = ARRAY_SIZE(vga_mode);
 cam->ctrls = sd->ctrls;
 sd->quality = QUALITY_DEF;
 gspca_dev->nbalt = 9;
 return 0;
}
