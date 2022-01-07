
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int DYNAMIC_NOISE_CONTROL_FORMATTER ;
 int SET_LUM_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_set_dynamic_noise(struct pwc_device *pdev, int noise)
{
 unsigned char buf;

 if (noise < 0)
  noise = 0;
 if (noise > 3)
  noise = 3;
 buf = noise;
 return send_control_msg(pdev,
  SET_LUM_CTL, DYNAMIC_NOISE_CONTROL_FORMATTER,
  &buf, sizeof(buf));
}
