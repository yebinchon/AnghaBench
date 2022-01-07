
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int GET_STATUS_CTL ;
 int READ_RED_GAIN_FORMATTER ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

__attribute__((used)) static int pwc_read_red_gain(struct pwc_device *pdev, int *value)
{
 unsigned char buf;
 int ret;

 ret = recv_control_msg(pdev,
  GET_STATUS_CTL, READ_RED_GAIN_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 *value = buf << 8;
 return 0;
}
