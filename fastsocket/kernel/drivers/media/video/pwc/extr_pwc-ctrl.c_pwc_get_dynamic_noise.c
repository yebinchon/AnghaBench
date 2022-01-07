
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int DYNAMIC_NOISE_CONTROL_FORMATTER ;
 int GET_LUM_CTL ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_get_dynamic_noise(struct pwc_device *pdev, int *noise)
{
 int ret;
 unsigned char buf;

 ret = recv_control_msg(pdev,
  GET_LUM_CTL, DYNAMIC_NOISE_CONTROL_FORMATTER,
  &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 *noise = buf;
 return 0;
}
