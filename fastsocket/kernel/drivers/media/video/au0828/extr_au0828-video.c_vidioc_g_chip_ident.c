
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dbg_chip_ident {scalar_t__ ident; int match; scalar_t__ revision; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int v4l2_dev; } ;


 int EINVAL ;
 scalar_t__ V4L2_IDENT_AU0828 ;
 scalar_t__ V4L2_IDENT_NONE ;
 int core ;
 int g_chip_ident ;
 scalar_t__ v4l2_chip_match_host (int *) ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_dbg_chip_ident*) ;

__attribute__((used)) static int vidioc_g_chip_ident(struct file *file, void *priv,
        struct v4l2_dbg_chip_ident *chip)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;
 chip->ident = V4L2_IDENT_NONE;
 chip->revision = 0;

 if (v4l2_chip_match_host(&chip->match)) {
  chip->ident = V4L2_IDENT_AU0828;
  return 0;
 }

 v4l2_device_call_all(&dev->v4l2_dev, 0, core, g_chip_ident, chip);
 if (chip->ident == V4L2_IDENT_NONE)
  return -EINVAL;

 return 0;
}
