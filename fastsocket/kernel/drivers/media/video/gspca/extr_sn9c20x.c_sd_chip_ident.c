
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int addr; } ;
struct v4l2_dbg_chip_ident {int ident; int revision; TYPE_1__ match; } ;
struct sd {size_t sensor; int i2c_addr; } ;
struct gspca_dev {int dummy; } ;


 int EINVAL ;


 int V4L2_IDENT_SN9C20X ;
 int * i2c_ident ;

__attribute__((used)) static int sd_chip_ident(struct gspca_dev *gspca_dev,
   struct v4l2_dbg_chip_ident *chip)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (chip->match.type) {
 case 129:
  if (chip->match.addr != 0)
   return -EINVAL;
  chip->revision = 0;
  chip->ident = V4L2_IDENT_SN9C20X;
  return 0;
 case 128:
  if (chip->match.addr != sd->i2c_addr)
   return -EINVAL;
  chip->revision = 0;
  chip->ident = i2c_ident[sd->sensor];
  return 0;
 }
 return -EINVAL;
}
