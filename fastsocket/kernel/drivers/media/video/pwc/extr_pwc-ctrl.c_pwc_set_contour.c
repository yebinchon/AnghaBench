
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int AUTO_CONTOUR_FORMATTER ;
 int PRESET_CONTOUR_FORMATTER ;
 int SET_LUM_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_set_contour(struct pwc_device *pdev, int contour)
{
 unsigned char buf;
 int ret;

 if (contour < 0)
  buf = 0xff;
 else
  buf = 0x0;
 ret = send_control_msg(pdev,
  SET_LUM_CTL, AUTO_CONTOUR_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;

 if (contour < 0)
  return 0;
 if (contour > 0xffff)
  contour = 0xffff;

 buf = (contour >> 10);
 ret = send_control_msg(pdev,
  SET_LUM_CTL, PRESET_CONTOUR_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 return 0;
}
