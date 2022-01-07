
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int AUTO_CONTOUR_FORMATTER ;
 int GET_LUM_CTL ;
 int PRESET_CONTOUR_FORMATTER ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_get_contour(struct pwc_device *pdev, int *contour)
{
 unsigned char buf;
 int ret;

 ret = recv_control_msg(pdev,
  GET_LUM_CTL, AUTO_CONTOUR_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;

 if (buf == 0) {

  ret = recv_control_msg(pdev,
   GET_LUM_CTL, PRESET_CONTOUR_FORMATTER,
   &buf, sizeof(buf));
  if (ret < 0)
   return ret;
  *contour = buf << 10;
 }
 else
  *contour = -1;
 return 0;
}
