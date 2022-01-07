
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int name; } ;
struct v4l2_dbg_chip_ident {TYPE_1__ match; scalar_t__ revision; int ident; } ;
struct saa7134_dev {int dummy; } ;
struct file {struct saa7134_dev* private_data; } ;


 int EINVAL ;
 scalar_t__ V4L2_CHIP_MATCH_I2C_ADDR ;
 scalar_t__ V4L2_CHIP_MATCH_I2C_DRIVER ;
 int V4L2_IDENT_NONE ;
 int core ;
 int g_chip_ident ;
 int saa_call_empress (struct saa7134_dev*,int ,int ,struct v4l2_dbg_chip_ident*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int empress_g_chip_ident(struct file *file, void *fh,
        struct v4l2_dbg_chip_ident *chip)
{
 struct saa7134_dev *dev = file->private_data;

 chip->ident = V4L2_IDENT_NONE;
 chip->revision = 0;
 if (chip->match.type == V4L2_CHIP_MATCH_I2C_DRIVER &&
     !strcmp(chip->match.name, "saa6752hs"))
  return saa_call_empress(dev, core, g_chip_ident, chip);
 if (chip->match.type == V4L2_CHIP_MATCH_I2C_ADDR)
  return saa_call_empress(dev, core, g_chip_ident, chip);
 return -EINVAL;
}
