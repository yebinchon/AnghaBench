
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int AGC_MODE_FORMATTER ;
 int PRESET_AGC_FORMATTER ;
 int SET_LUM_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,char*,int) ;

int pwc_set_agc(struct pwc_device *pdev, int mode, int value)
{
 char buf;
 int ret;

 if (mode)
  buf = 0x0;
 else
  buf = 0xff;

 ret = send_control_msg(pdev,
  SET_LUM_CTL, AGC_MODE_FORMATTER, &buf, sizeof(buf));

 if (!mode && ret >= 0) {
  if (value < 0)
   value = 0;
  if (value > 0xffff)
   value = 0xffff;
  buf = (value >> 10) & 0x3F;
  ret = send_control_msg(pdev,
   SET_LUM_CTL, PRESET_AGC_FORMATTER, &buf, sizeof(buf));
 }
 if (ret < 0)
  return ret;
 return 0;
}
