
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int GAMMA_FORMATTER ;
 int SET_LUM_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,char*,int) ;

int pwc_set_gamma(struct pwc_device *pdev, int value)
{
 char buf;

 if (value < 0)
  value = 0;
 if (value > 0xffff)
  value = 0xffff;
 buf = (value >> 11) & 0x1f;
 return send_control_msg(pdev,
  SET_LUM_CTL, GAMMA_FORMATTER, &buf, sizeof(buf));
}
