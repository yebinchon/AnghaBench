
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int gain; int exposure; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int EXPOSURE_DEF ;
 int GAIN_DEF ;
 int sif_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 cam = &gspca_dev->cam;
 cam->cam_mode = sif_mode;
 cam->nmodes = ARRAY_SIZE(sif_mode);

 sd->exposure = EXPOSURE_DEF;
 sd->gain = GAIN_DEF;
 return 0;
}
