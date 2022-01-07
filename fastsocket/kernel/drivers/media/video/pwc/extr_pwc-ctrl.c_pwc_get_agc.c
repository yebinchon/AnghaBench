
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int AGC_MODE_FORMATTER ;
 int GET_LUM_CTL ;
 int GET_STATUS_CTL ;
 int PRESET_AGC_FORMATTER ;
 int READ_AGC_FORMATTER ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_get_agc(struct pwc_device *pdev, int *value)
{
 unsigned char buf;
 int ret;

 ret = recv_control_msg(pdev,
  GET_LUM_CTL, AGC_MODE_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;

 if (buf != 0) {
  ret = recv_control_msg(pdev,
   GET_LUM_CTL, PRESET_AGC_FORMATTER, &buf, sizeof(buf));
  if (ret < 0)
   return ret;
  if (buf > 0x3F)
   buf = 0x3F;
  *value = (buf << 10);
 }
 else {
  ret = recv_control_msg(pdev,
   GET_STATUS_CTL, READ_AGC_FORMATTER, &buf, sizeof(buf));
  if (ret < 0)
   return ret;

  if (buf > 0x9F)
   buf = 0x9F;
  *value = -(48 + buf * 409);
 }

 return 0;
}
