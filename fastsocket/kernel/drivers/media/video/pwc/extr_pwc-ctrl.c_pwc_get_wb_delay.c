
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;
typedef int buf ;


 int AWB_CONTROL_DELAY_FORMATTER ;
 int GET_CHROM_CTL ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char*,int) ;

__attribute__((used)) static int pwc_get_wb_delay(struct pwc_device *pdev, int *value)
{
 unsigned char buf;
 int ret;

 ret = recv_control_msg(pdev,
  GET_CHROM_CTL, AWB_CONTROL_DELAY_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 *value = buf << 10;
 return 0;
}
