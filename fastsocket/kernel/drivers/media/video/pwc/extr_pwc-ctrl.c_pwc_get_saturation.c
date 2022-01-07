
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int type; } ;
typedef int buf ;


 int EINVAL ;
 int GET_CHROM_CTL ;
 int SATURATION_MODE_FORMATTER1 ;
 int SATURATION_MODE_FORMATTER2 ;
 int recv_control_msg (struct pwc_device*,int ,int,char*,int) ;

int pwc_get_saturation(struct pwc_device *pdev, int *value)
{
 char buf;
 int ret, saturation_register;

 if (pdev->type < 675)
  return -EINVAL;
 if (pdev->type < 730)
  saturation_register = SATURATION_MODE_FORMATTER2;
 else
  saturation_register = SATURATION_MODE_FORMATTER1;
 ret = recv_control_msg(pdev,
  GET_CHROM_CTL, saturation_register, &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 *value = (signed)buf;
 return 0;
}
