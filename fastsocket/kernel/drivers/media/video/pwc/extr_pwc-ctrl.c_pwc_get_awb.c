
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int GET_CHROM_CTL ;
 int WB_MODE_FORMATTER ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

int pwc_get_awb(struct pwc_device *pdev)
{
 unsigned char buf;
 int ret;

 ret = recv_control_msg(pdev,
  GET_CHROM_CTL, WB_MODE_FORMATTER, &buf, sizeof(buf));

 if (ret < 0)
  return ret;
 return buf;
}
