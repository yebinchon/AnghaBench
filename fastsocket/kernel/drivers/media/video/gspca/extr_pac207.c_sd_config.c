
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device_id {int idVendor; int idProduct; } ;
struct sd {int autogain; int gain; int exposure; int brightness; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int AUTOGAIN_DEF ;
 int D_PROBE ;
 int ENODEV ;
 int PAC207_BRIGHTNESS_DEFAULT ;
 int PAC207_EXPOSURE_DEFAULT ;
 int PAC207_GAIN_DEFAULT ;
 int PDEBUG (int ,char*,...) ;
 int pac207_read_reg (struct gspca_dev*,int) ;
 int sif_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;
 u8 idreg[2];

 idreg[0] = pac207_read_reg(gspca_dev, 0x0000);
 idreg[1] = pac207_read_reg(gspca_dev, 0x0001);
 idreg[0] = ((idreg[0] & 0x0f) << 4) | ((idreg[1] & 0xf0) >> 4);
 idreg[1] = idreg[1] & 0x0f;
 PDEBUG(D_PROBE, "Pixart Sensor ID 0x%02X Chips ID 0x%02X",
  idreg[0], idreg[1]);

 if (idreg[0] != 0x27) {
  PDEBUG(D_PROBE, "Error invalid sensor ID!");
  return -ENODEV;
 }

 PDEBUG(D_PROBE,
  "Pixart PAC207BCA Image Processor and Control Chip detected"
  " (vid/pid 0x%04X:0x%04X)", id->idVendor, id->idProduct);

 cam = &gspca_dev->cam;
 cam->cam_mode = sif_mode;
 cam->nmodes = ARRAY_SIZE(sif_mode);
 sd->brightness = PAC207_BRIGHTNESS_DEFAULT;
 sd->exposure = PAC207_EXPOSURE_DEFAULT;
 sd->gain = PAC207_GAIN_DEFAULT;
 sd->autogain = AUTOGAIN_DEF;

 return 0;
}
