
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int FLICKERLESS_MODE_FORMATTER ;
 int GET_LUM_CTL ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_get_flicker(struct pwc_device *pdev, int *flicker)
{
 int ret;
 unsigned char buf;

 ret = recv_control_msg(pdev,
  GET_LUM_CTL, FLICKERLESS_MODE_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 *flicker = !!buf;
 return 0;
}
