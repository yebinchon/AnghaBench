
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dbg_chip_ident {int ident; int match; scalar_t__ revision; } ;
struct file {int dummy; } ;
struct cafe_camera {int dummy; } ;


 int V4L2_IDENT_CAFE ;
 int V4L2_IDENT_NONE ;
 int core ;
 int g_chip_ident ;
 int sensor_call (struct cafe_camera*,int ,int ,struct v4l2_dbg_chip_ident*) ;
 scalar_t__ v4l2_chip_match_host (int *) ;

__attribute__((used)) static int cafe_vidioc_g_chip_ident(struct file *file, void *priv,
  struct v4l2_dbg_chip_ident *chip)
{
 struct cafe_camera *cam = priv;

 chip->ident = V4L2_IDENT_NONE;
 chip->revision = 0;
 if (v4l2_chip_match_host(&chip->match)) {
  chip->ident = V4L2_IDENT_CAFE;
  return 0;
 }
 return sensor_call(cam, core, g_chip_ident, chip);
}
