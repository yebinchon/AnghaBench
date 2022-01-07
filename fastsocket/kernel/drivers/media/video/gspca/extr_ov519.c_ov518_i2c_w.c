
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int D_USBO ;
 int PDEBUG (int ,char*,int,int) ;
 int R518_I2C_CTL ;
 int R51x_I2C_DATA ;
 int R51x_I2C_SADDR_3 ;
 int msleep (int) ;
 int reg_r8 (struct sd*,int ) ;
 int reg_w (struct sd*,int ,int) ;

__attribute__((used)) static void ov518_i2c_w(struct sd *sd,
  u8 reg,
  u8 value)
{
 PDEBUG(D_USBO, "ov518_i2c_w %02x %02x", reg, value);


 reg_w(sd, R51x_I2C_SADDR_3, reg);


 reg_w(sd, R51x_I2C_DATA, value);


 reg_w(sd, R518_I2C_CTL, 0x01);


 msleep(4);
 reg_r8(sd, R518_I2C_CTL);
}
