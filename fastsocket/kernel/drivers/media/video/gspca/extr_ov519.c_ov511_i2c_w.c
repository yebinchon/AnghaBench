
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int D_USBO ;
 int PDEBUG (int ,char*,...) ;
 int R511_I2C_CTL ;
 int R51x_I2C_DATA ;
 int R51x_I2C_SADDR_3 ;
 int reg_r (struct sd*,int ) ;
 int reg_w (struct sd*,int ,int) ;

__attribute__((used)) static void ov511_i2c_w(struct sd *sd, u8 reg, u8 value)
{
 int rc, retries;

 PDEBUG(D_USBO, "ov511_i2c_w %02x %02x", reg, value);


 for (retries = 6; ; ) {

  reg_w(sd, R51x_I2C_SADDR_3, reg);


  reg_w(sd, R51x_I2C_DATA, value);


  reg_w(sd, R511_I2C_CTL, 0x01);

  do {
   rc = reg_r(sd, R511_I2C_CTL);
  } while (rc > 0 && ((rc & 1) == 0));

  if (rc < 0)
   return;

  if ((rc & 2) == 0)
   break;
  if (--retries < 0) {
   PDEBUG(D_USBO, "i2c write retries exhausted");
   return;
  }
 }
}
