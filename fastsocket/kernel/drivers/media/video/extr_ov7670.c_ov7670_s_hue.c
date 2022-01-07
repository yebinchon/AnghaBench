
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov7670_info {int hue; } ;


 int CMATRIX_LEN ;
 int EINVAL ;
 int ov7670_calc_cmatrix (struct ov7670_info*,int*) ;
 int ov7670_store_cmatrix (struct v4l2_subdev*,int*) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_s_hue(struct v4l2_subdev *sd, int value)
{
 struct ov7670_info *info = to_state(sd);
 int matrix[CMATRIX_LEN];
 int ret;

 if (value < -180 || value > 180)
  return -EINVAL;
 info->hue = value;
 ov7670_calc_cmatrix(info, matrix);
 ret = ov7670_store_cmatrix(sd, matrix);
 return ret;
}
