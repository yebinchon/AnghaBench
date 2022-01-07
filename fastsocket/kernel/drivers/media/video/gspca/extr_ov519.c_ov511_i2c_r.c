
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int D_USBI ;
 int PDEBUG (int ,char*,...) ;
 int R511_I2C_CTL ;
 int R51x_I2C_DATA ;
 int R51x_I2C_SADDR_2 ;
 int reg_r (struct sd*,int ) ;
 int reg_w (struct sd*,int ,int) ;

__attribute__((used)) static int ov511_i2c_r(struct sd *sd, u8 reg)
{
 int rc, value, retries;


 for (retries = 6; ; ) {

  reg_w(sd, R51x_I2C_SADDR_2, reg);


  reg_w(sd, R511_I2C_CTL, 0x03);

  do {
   rc = reg_r(sd, R511_I2C_CTL);
  } while (rc > 0 && ((rc & 1) == 0));

  if (rc < 0)
   return rc;

  if ((rc & 2) == 0)
   break;


  reg_w(sd, R511_I2C_CTL, 0x10);

  if (--retries < 0) {
   PDEBUG(D_USBI, "i2c write retries exhausted");
   return -1;
  }
 }


 for (retries = 6; ; ) {

  reg_w(sd, R511_I2C_CTL, 0x05);

  do {
   rc = reg_r(sd, R511_I2C_CTL);
  } while (rc > 0 && ((rc & 1) == 0));

  if (rc < 0)
   return rc;

  if ((rc & 2) == 0)
   break;


  reg_w(sd, R511_I2C_CTL, 0x10);

  if (--retries < 0) {
   PDEBUG(D_USBI, "i2c read retries exhausted");
   return -1;
  }
 }

 value = reg_r(sd, R51x_I2C_DATA);

 PDEBUG(D_USBI, "ov511_i2c_r %02x %02x", reg, value);


 reg_w(sd, R511_I2C_CTL, 0x05);

 return value;
}
