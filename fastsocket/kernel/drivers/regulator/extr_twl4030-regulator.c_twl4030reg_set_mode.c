
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int id; } ;
struct regulator_dev {int dummy; } ;


 int DEV_GRP_P1 ;
 int EACCES ;
 int EINVAL ;
 unsigned int MSG_SINGULAR (int ,int ,int ) ;
 int P1_GRP ;
 int P2_GRP ;
 int P3_GRP ;


 int RES_STATE_ACTIVE ;
 int RES_STATE_SLEEP ;
 int TWL4030_MODULE_PM_MASTER ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twl4030_i2c_write_u8 (int ,unsigned int,int) ;
 int twl4030reg_grp (struct regulator_dev*) ;

__attribute__((used)) static int twl4030reg_set_mode(struct regulator_dev *rdev, unsigned mode)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 unsigned message;
 int status;


 switch (mode) {
 case 129:
  message = MSG_SINGULAR(DEV_GRP_P1, info->id, RES_STATE_ACTIVE);
  break;
 case 128:
  message = MSG_SINGULAR(DEV_GRP_P1, info->id, RES_STATE_SLEEP);
  break;
 default:
  return -EINVAL;
 }


 status = twl4030reg_grp(rdev);
 if (status < 0)
  return status;
 if (!(status & (P3_GRP | P2_GRP | P1_GRP)))
  return -EACCES;

 status = twl4030_i2c_write_u8(TWL4030_MODULE_PM_MASTER,
   message >> 8, 0x15 );
 if (status >= 0)
  return status;

 return twl4030_i2c_write_u8(TWL4030_MODULE_PM_MASTER,
   message, 0x16 );
}
