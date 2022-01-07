
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int freq; int satur; int sharpness; int exposure; int autogain; int contrast; int brightness; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {int ctrl_inac; struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int AUTOGAIN_DEF ;
 int BRIGHTNESS_DEF ;
 int CONTRAST_DEF ;
 int EXPO_DEF ;
 int EXPO_IDX ;
 int FREQ_DEF ;
 int SATUR_DEF ;
 int SHARPNESS_DEF ;
 int ov965x_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;

 cam->cam_mode = ov965x_mode;
 cam->nmodes = ARRAY_SIZE(ov965x_mode);

 sd->brightness = BRIGHTNESS_DEF;
 sd->contrast = CONTRAST_DEF;
 sd->satur = SATUR_DEF;
 sd->freq = FREQ_DEF;

 return 0;
}
