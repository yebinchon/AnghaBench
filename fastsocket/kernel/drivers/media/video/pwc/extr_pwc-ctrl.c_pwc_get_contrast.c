
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int CONTRAST_FORMATTER ;
 int GET_LUM_CTL ;
 int recv_control_msg (struct pwc_device*,int ,int ,char*,int) ;

int pwc_get_contrast(struct pwc_device *pdev)
{
 char buf;
 int ret;

 ret = recv_control_msg(pdev,
  GET_LUM_CTL, CONTRAST_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 return buf;
}
