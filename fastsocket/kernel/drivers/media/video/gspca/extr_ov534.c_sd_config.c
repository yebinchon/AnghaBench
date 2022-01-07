
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int frame_rate; int freqfltr; int vflip; int hflip; int sharpness; int aec; int awb; int agc; int exposure; int gain; int contrast; int brightness; } ;
struct cam {int bulk; int bulk_size; int bulk_nurbs; int mode_framerates; int nmodes; int cam_mode; } ;
struct gspca_dev {int ctrl_inac; struct cam cam; } ;


 int AEC_DEF ;
 int AGC_DEF ;
 int ARRAY_SIZE (int ) ;
 int AWB_DEF ;
 int AWB_IDX ;
 int BRIGHTNESS_DEF ;
 int CONTRAST_DEF ;
 int EXPO_DEF ;
 int FREQFLTR_DEF ;
 int GAIN_DEF ;
 int HFLIP_DEF ;
 int SHARPNESS_DEF ;
 int VFLIP_DEF ;
 int ov772x_framerates ;
 int ov772x_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;

 cam->cam_mode = ov772x_mode;
 cam->nmodes = ARRAY_SIZE(ov772x_mode);
 cam->mode_framerates = ov772x_framerates;

 cam->bulk = 1;
 cam->bulk_size = 16384;
 cam->bulk_nurbs = 2;

 sd->frame_rate = 30;

 sd->brightness = BRIGHTNESS_DEF;
 sd->contrast = CONTRAST_DEF;
 sd->gain = GAIN_DEF;
 sd->exposure = EXPO_DEF;



 gspca_dev->ctrl_inac |= (1 << AWB_IDX);

 sd->awb = AWB_DEF;
 sd->aec = AEC_DEF;
 sd->sharpness = SHARPNESS_DEF;
 sd->hflip = HFLIP_DEF;
 sd->vflip = VFLIP_DEF;
 sd->freqfltr = FREQFLTR_DEF;

 return 0;
}
