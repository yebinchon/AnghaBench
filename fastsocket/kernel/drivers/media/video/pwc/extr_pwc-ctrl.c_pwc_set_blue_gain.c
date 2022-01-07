
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int PRESET_MANUAL_BLUE_GAIN_FORMATTER ;
 int SET_CHROM_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_set_blue_gain(struct pwc_device *pdev, int value)
{
 unsigned char buf;

 if (value < 0)
  value = 0;
 if (value > 0xffff)
  value = 0xffff;

 buf = value >> 8;
 return send_control_msg(pdev,
  SET_CHROM_CTL, PRESET_MANUAL_BLUE_GAIN_FORMATTER,
  &buf, sizeof(buf));
}
