
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int idProduct; } ;
struct sd {int do_lcd_stop; scalar_t__ cam_type; int sensor_type; int adj_colors; int gain; int min_clockdiv; int contrast; int exposure; int brightness; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {int* usb_buf; int ctrl_dis; struct cam cam; } ;


 int ARGUS_QC_BRIGHTNESS_IDX ;
 int ARRAY_SIZE (int ) ;
 scalar_t__ CAM_TYPE_CIF ;
 scalar_t__ CAM_TYPE_VGA ;
 int CONTRAST_IDX ;
 int D_PROBE ;
 int ENODEV ;
 int EXPOSURE_IDX ;
 int GAIN_IDX ;
 int MIN_CLOCKDIV_IDX ;
 int MR97310A_BRIGHTNESS_DEFAULT ;
 int MR97310A_CONTRAST_DEFAULT ;
 int MR97310A_CS_GAIN_DEFAULT ;
 int MR97310A_EXPOSURE_DEFAULT ;
 int MR97310A_GAIN_DEFAULT ;
 int MR97310A_MIN_CLOCKDIV_DEFAULT ;
 int NORM_BRIGHTNESS_IDX ;
 int PDEBUG (int ,char*,...) ;
 int SAKAR_CS_GAIN_IDX ;
 int cam_get_response16 (struct gspca_dev*,int,int) ;
 int err (char*,...) ;
 int force_sensor_type ;
 int sd_stopN (struct gspca_dev*) ;
 int stream_start (struct gspca_dev*) ;
 int vga_mode ;
 int zero_the_pointer (struct gspca_dev*) ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;
 int gain_default = MR97310A_GAIN_DEFAULT;
 int err_code;

 cam = &gspca_dev->cam;
 cam->cam_mode = vga_mode;
 cam->nmodes = ARRAY_SIZE(vga_mode);
 sd->do_lcd_stop = 0;
 err_code = zero_the_pointer(gspca_dev);
 if (err_code < 0)
  return err_code;

 err_code = stream_start(gspca_dev);
 if (err_code < 0)
  return err_code;


 err_code = cam_get_response16(gspca_dev, 0x07, 1);
 if (err_code < 0)
  return err_code;

 if (id->idProduct == 0x0110 || id->idProduct == 0x010e) {
  sd->cam_type = CAM_TYPE_CIF;
  cam->nmodes--;
  switch (gspca_dev->usb_buf[0]) {
  case 2:
   sd->sensor_type = 0;
   break;
  case 3:
   sd->sensor_type = 1;
   break;
  default:
   err("Unknown CIF Sensor id : %02x",
          gspca_dev->usb_buf[1]);
   return -ENODEV;
  }
  PDEBUG(D_PROBE, "MR97310A CIF camera detected, sensor: %d",
         sd->sensor_type);
 } else {
  sd->cam_type = CAM_TYPE_VGA;
  sd->sensor_type = 1;
  sd->do_lcd_stop = 0;
  sd->adj_colors = 0;
  if (gspca_dev->usb_buf[0] == 0x01) {
   sd->sensor_type = 2;
  } else if ((gspca_dev->usb_buf[0] != 0x03) &&
     (gspca_dev->usb_buf[0] != 0x04)) {
   err("Unknown VGA Sensor id Byte 0: %02x",
     gspca_dev->usb_buf[0]);
   err("Defaults assumed, may not work");
   err("Please report this");
  }

  if ((gspca_dev->usb_buf[0] == 0x03) &&
     (gspca_dev->usb_buf[1] == 0x50))
   sd->adj_colors = 1;
  if (gspca_dev->usb_buf[0] == 0x04) {
   sd->do_lcd_stop = 1;
   switch (gspca_dev->usb_buf[1]) {
   case 0x50:
    sd->sensor_type = 0;
    PDEBUG(D_PROBE, "sensor_type corrected to 0");
    break;
   case 0x20:

    break;
   default:
    err("Unknown VGA Sensor id Byte 1: %02x",
     gspca_dev->usb_buf[1]);
    err("Defaults assumed, may not work");
    err("Please report this");
   }
  }
  PDEBUG(D_PROBE, "MR97310A VGA camera detected, sensor: %d",
         sd->sensor_type);
 }

 sd_stopN(gspca_dev);

 if (force_sensor_type != -1) {
  sd->sensor_type = !!force_sensor_type;
  PDEBUG(D_PROBE, "Forcing sensor type to: %d",
         sd->sensor_type);
 }


 if (sd->cam_type == CAM_TYPE_CIF) {

  if (sd->sensor_type == 0)
   gspca_dev->ctrl_dis = (1 << NORM_BRIGHTNESS_IDX) |
           (1 << ARGUS_QC_BRIGHTNESS_IDX) |
           (1 << CONTRAST_IDX) |
           (1 << SAKAR_CS_GAIN_IDX);
  else
   gspca_dev->ctrl_dis = (1 << ARGUS_QC_BRIGHTNESS_IDX) |
           (1 << CONTRAST_IDX) |
           (1 << SAKAR_CS_GAIN_IDX) |
           (1 << MIN_CLOCKDIV_IDX);
 } else {

  if (sd->sensor_type == 0)
   gspca_dev->ctrl_dis = (1 << NORM_BRIGHTNESS_IDX) |
           (1 << ARGUS_QC_BRIGHTNESS_IDX) |
           (1 << EXPOSURE_IDX) |
           (1 << GAIN_IDX) |
           (1 << CONTRAST_IDX) |
           (1 << SAKAR_CS_GAIN_IDX) |
           (1 << MIN_CLOCKDIV_IDX);
  else if (sd->sensor_type == 2) {
   gspca_dev->ctrl_dis = (1 << NORM_BRIGHTNESS_IDX) |
           (1 << ARGUS_QC_BRIGHTNESS_IDX) |
           (1 << GAIN_IDX) |
           (1 << MIN_CLOCKDIV_IDX);
   gain_default = MR97310A_CS_GAIN_DEFAULT;
  } else if (sd->do_lcd_stop)

   gspca_dev->ctrl_dis = (1 << NORM_BRIGHTNESS_IDX) |
           (1 << CONTRAST_IDX) |
           (1 << SAKAR_CS_GAIN_IDX);
  else
   gspca_dev->ctrl_dis = (1 << ARGUS_QC_BRIGHTNESS_IDX) |
           (1 << CONTRAST_IDX) |
           (1 << SAKAR_CS_GAIN_IDX);
 }

 sd->brightness = MR97310A_BRIGHTNESS_DEFAULT;
 sd->exposure = MR97310A_EXPOSURE_DEFAULT;
 sd->gain = gain_default;
 sd->contrast = MR97310A_CONTRAST_DEFAULT;
 sd->min_clockdiv = MR97310A_MIN_CLOCKDIV_DEFAULT;

 return 0;
}
