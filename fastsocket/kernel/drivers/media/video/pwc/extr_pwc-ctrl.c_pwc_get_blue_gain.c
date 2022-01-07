
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int GET_CHROM_CTL ;
 int PRESET_MANUAL_BLUE_GAIN_FORMATTER ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_get_blue_gain(struct pwc_device *pdev, int *value)
{
 unsigned char buf;
 int ret;

 ret = recv_control_msg(pdev,
  GET_CHROM_CTL, PRESET_MANUAL_BLUE_GAIN_FORMATTER,
  &buf, sizeof(buf));
 if (ret < 0)
     return ret;
 *value = buf << 8;
 return 0;
}
