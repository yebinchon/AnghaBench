
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int type; } ;
typedef int buf ;


 int LED_FORMATTER ;
 int SET_STATUS_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,unsigned char**,int) ;

int pwc_set_leds(struct pwc_device *pdev, int on_value, int off_value)
{
 unsigned char buf[2];

 if (pdev->type < 730)
  return 0;
 on_value /= 100;
 off_value /= 100;
 if (on_value < 0)
  on_value = 0;
 if (on_value > 0xff)
  on_value = 0xff;
 if (off_value < 0)
  off_value = 0;
 if (off_value > 0xff)
  off_value = 0xff;

 buf[0] = on_value;
 buf[1] = off_value;

 return send_control_msg(pdev,
  SET_STATUS_CTL, LED_FORMATTER, &buf, sizeof(buf));
}
