
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int type; } ;
typedef int buf ;


 scalar_t__ DEVICE_USE_CODEC2 (int ) ;
 scalar_t__ DEVICE_USE_CODEC3 (int ) ;
 int GET_STATUS_CTL ;
 int READ_SHUTTER_FORMATTER ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char**,int) ;

int pwc_get_shutter_speed(struct pwc_device *pdev, int *value)
{
 unsigned char buf[2];
 int ret;

 ret = recv_control_msg(pdev,
  GET_STATUS_CTL, READ_SHUTTER_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 *value = buf[0] + (buf[1] << 8);
 if (DEVICE_USE_CODEC2(pdev->type)) {

  *value *= 256/656;
 } else if (DEVICE_USE_CODEC3(pdev->type)) {

 }
 return 0;
}
