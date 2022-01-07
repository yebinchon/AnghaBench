
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int red_gain; int blue_gain; int green_gain; int effect; int sharpness; int awb; int freq; int mirror; int autogain; int gamma; int colors; int contrast; int brightness; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int AUTOGAIN_DEF ;
 int AWB_DEF ;
 int BLUE_GAIN_DEF ;
 int BRIGHTNESS_DEF ;
 int COLORS_DEF ;
 int CONTRAST_DEF ;
 int EFFECTS_DEF ;
 int FREQ_DEF ;
 int GAIN_DEF ;
 int GAMMA_DEF ;
 int MIRROR_DEF ;
 int RED_GAIN_DEF ;
 int SHARPNESS_DEF ;
 int vga_mode_t16 ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;

 cam->cam_mode = vga_mode_t16;
 cam->nmodes = ARRAY_SIZE(vga_mode_t16);

 sd->brightness = BRIGHTNESS_DEF;
 sd->contrast = CONTRAST_DEF;
 sd->colors = COLORS_DEF;
 sd->gamma = GAMMA_DEF;
 sd->autogain = AUTOGAIN_DEF;
 sd->mirror = MIRROR_DEF;
 sd->freq = FREQ_DEF;
 sd->awb = AWB_DEF;
 sd->sharpness = SHARPNESS_DEF;
 sd->effect = EFFECTS_DEF;
 sd->red_gain = RED_GAIN_DEF;
 sd->blue_gain = BLUE_GAIN_DEF;
 sd->green_gain = GAIN_DEF * 3 - RED_GAIN_DEF - BLUE_GAIN_DEF;

 return 0;
}
