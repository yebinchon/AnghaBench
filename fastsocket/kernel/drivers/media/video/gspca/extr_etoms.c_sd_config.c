
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {scalar_t__ driver_info; } ;
struct sd {scalar_t__ sensor; int ag_cnt; int autogain; int colors; int contrast; int brightness; } ;
struct cam {void* nmodes; void* cam_mode; } ;
struct gspca_dev {int ctrl_dis; struct cam cam; } ;


 void* ARRAY_SIZE (void*) ;
 int AUTOGAIN_DEF ;
 int BRIGHTNESS_DEF ;
 int COLOR_DEF ;
 int COLOR_IDX ;
 int CONTRAST_DEF ;
 scalar_t__ SENSOR_PAS106 ;
 void* sif_mode ;
 void* vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;
 sd->sensor = id->driver_info;
 if (sd->sensor == SENSOR_PAS106) {
  cam->cam_mode = sif_mode;
  cam->nmodes = ARRAY_SIZE(sif_mode);
 } else {
  cam->cam_mode = vga_mode;
  cam->nmodes = ARRAY_SIZE(vga_mode);
  gspca_dev->ctrl_dis = (1 << COLOR_IDX);
 }
 sd->brightness = BRIGHTNESS_DEF;
 sd->contrast = CONTRAST_DEF;
 sd->colors = COLOR_DEF;
 sd->autogain = AUTOGAIN_DEF;
 sd->ag_cnt = -1;
 return 0;
}
