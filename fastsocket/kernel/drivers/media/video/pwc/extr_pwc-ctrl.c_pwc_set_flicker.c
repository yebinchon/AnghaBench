
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int FLICKERLESS_MODE_FORMATTER ;
 int SET_LUM_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_set_flicker(struct pwc_device *pdev, int flicker)
{
 unsigned char buf;

 if (flicker)
  buf = 0xff;
 else
  buf = 0x0;
 return send_control_msg(pdev,
  SET_LUM_CTL, FLICKERLESS_MODE_FORMATTER, &buf, sizeof(buf));
}
