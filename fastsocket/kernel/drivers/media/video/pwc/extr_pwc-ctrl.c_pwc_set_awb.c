
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int SET_CHROM_CTL ;
 int WB_MODE_FORMATTER ;
 int send_control_msg (struct pwc_device*,int ,int ,char*,int) ;

int pwc_set_awb(struct pwc_device *pdev, int mode)
{
 char buf;
 int ret;

 if (mode < 0)
     mode = 0;

 if (mode > 4)
     mode = 4;

 buf = mode & 0x07;

 ret = send_control_msg(pdev,
  SET_CHROM_CTL, WB_MODE_FORMATTER, &buf, sizeof(buf));

 if (ret < 0)
  return ret;
 return 0;
}
