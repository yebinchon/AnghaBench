
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int type; } ;
typedef int buf ;


 scalar_t__ DEVICE_USE_CODEC2 (int ) ;
 scalar_t__ DEVICE_USE_CODEC3 (int ) ;
 int PRESET_SHUTTER_FORMATTER ;
 int SET_LUM_CTL ;
 int SHUTTER_MODE_FORMATTER ;
 int send_control_msg (struct pwc_device*,int ,int ,char**,int) ;

int pwc_set_shutter_speed(struct pwc_device *pdev, int mode, int value)
{
 char buf[2];
 int speed, ret;


 if (mode)
  buf[0] = 0x0;
 else
  buf[0] = 0xff;

 ret = send_control_msg(pdev,
  SET_LUM_CTL, SHUTTER_MODE_FORMATTER, &buf, 1);

 if (!mode && ret >= 0) {
  if (value < 0)
   value = 0;
  if (value > 0xffff)
   value = 0xffff;

  if (DEVICE_USE_CODEC2(pdev->type)) {

   speed = (value / 100);
   buf[1] = speed >> 8;
   buf[0] = speed & 0xff;
  } else if (DEVICE_USE_CODEC3(pdev->type)) {

   buf[1] = 0;
   buf[0] = value >> 8;
  }

  ret = send_control_msg(pdev,
   SET_LUM_CTL, PRESET_SHUTTER_FORMATTER,
   &buf, sizeof(buf));
 }
 return ret;
}
