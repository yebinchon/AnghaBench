
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ bclass; int sensor; int mirror; int backlight; scalar_t__ lightfreq; int auto_exp; int auto_brt; int dev; } ;


 scalar_t__ BCL_OV518 ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ FATAL_ERROR (int) ;
 int PDEBUG (int,char*,int ) ;
 int bandingfilter ;
 int err (char*) ;
 int i2c_r (struct usb_ov511*,int) ;
 int lightfreq ;
 int ov511_mode_init_regs (struct usb_ov511*,int,int,int,int) ;
 int ov518_mode_init_regs (struct usb_ov511*,int,int,int,int) ;
 int sensor_set_auto_brightness (struct usb_ov511*,int ) ;
 int sensor_set_auto_exposure (struct usb_ov511*,int ) ;
 int sensor_set_backlight (struct usb_ov511*,int ) ;
 int sensor_set_banding_filter (struct usb_ov511*,int ) ;
 int sensor_set_light_freq (struct usb_ov511*,int ) ;
 int sensor_set_mirror (struct usb_ov511*,int ) ;
 int set_ov_sensor_window (struct usb_ov511*,int,int,int,int) ;

__attribute__((used)) static int
mode_init_regs(struct usb_ov511 *ov,
        int width, int height, int mode, int sub_flag)
{
 int rc = 0;

 if (!ov || !ov->dev)
  return -EFAULT;

 if (ov->bclass == BCL_OV518) {
  rc = ov518_mode_init_regs(ov, width, height, mode, sub_flag);
 } else {
  rc = ov511_mode_init_regs(ov, width, height, mode, sub_flag);
 }

 if (FATAL_ERROR(rc))
  return rc;

 switch (ov->sensor) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 134:
 case 133:
  rc = set_ov_sensor_window(ov, width, height, mode, sub_flag);
  break;
 case 136:
 case 135:
  err("KS0127-series decoders not supported yet");
  rc = -EINVAL;
  break;
 case 128:



  PDEBUG(1, "SAA status = 0x%02X", i2c_r(ov, 0x1f));
  break;
 default:
  err("Unknown sensor");
  rc = -EINVAL;
 }

 if (FATAL_ERROR(rc))
  return rc;


 rc = sensor_set_auto_brightness(ov, ov->auto_brt);
 if (FATAL_ERROR(rc))
  return rc;

 rc = sensor_set_auto_exposure(ov, ov->auto_exp);
 if (FATAL_ERROR(rc))
  return rc;

 rc = sensor_set_banding_filter(ov, bandingfilter);
 if (FATAL_ERROR(rc))
  return rc;

 if (ov->lightfreq) {
  rc = sensor_set_light_freq(ov, lightfreq);
  if (FATAL_ERROR(rc))
   return rc;
 }

 rc = sensor_set_backlight(ov, ov->backlight);
 if (FATAL_ERROR(rc))
  return rc;

 rc = sensor_set_mirror(ov, ov->mirror);
 if (FATAL_ERROR(rc))
  return rc;

 return 0;
}
