
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; } ;
struct sd {int bridge; int invert_led; int quality; int ctrls; } ;
struct cam {int bulk; int reverse_alts; int ctrls; void* nmodes; void* cam_mode; int bulk_nurbs; int bulk_size; } ;
struct gspca_dev {struct cam cam; } ;


 void* ARRAY_SIZE (void*) ;
 int BRIDGE_INVERT_LED ;
 int BRIDGE_MASK ;







 int MAX_NURBS ;
 int OVFX2_BULK_SIZE ;
 int QUALITY_DEF ;
 void* ov511_vga_mode ;
 void* ov518_vga_mode ;
 void* ov519_vga_mode ;
 void* w9968cf_vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam = &gspca_dev->cam;

 sd->bridge = id->driver_info & BRIDGE_MASK;
 sd->invert_led = (id->driver_info & BRIDGE_INVERT_LED) != 0;

 switch (sd->bridge) {
 case 134:
 case 133:
  cam->cam_mode = ov511_vga_mode;
  cam->nmodes = ARRAY_SIZE(ov511_vga_mode);
  break;
 case 132:
 case 131:
  cam->cam_mode = ov518_vga_mode;
  cam->nmodes = ARRAY_SIZE(ov518_vga_mode);
  break;
 case 130:
  cam->cam_mode = ov519_vga_mode;
  cam->nmodes = ARRAY_SIZE(ov519_vga_mode);
  sd->invert_led = !sd->invert_led;
  break;
 case 129:
  cam->cam_mode = ov519_vga_mode;
  cam->nmodes = ARRAY_SIZE(ov519_vga_mode);
  cam->bulk_size = OVFX2_BULK_SIZE;
  cam->bulk_nurbs = MAX_NURBS;
  cam->bulk = 1;
  break;
 case 128:
  cam->cam_mode = w9968cf_vga_mode;
  cam->nmodes = ARRAY_SIZE(w9968cf_vga_mode);
  cam->reverse_alts = 1;
  break;
 }

 gspca_dev->cam.ctrls = sd->ctrls;
 sd->quality = QUALITY_DEF;

 return 0;
}
