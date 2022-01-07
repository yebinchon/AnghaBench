
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int D_PROBE ;
 int OV7610_REG_ID_HIGH ;
 int OV7610_REG_ID_LOW ;
 int PDEBUG (int ,char*,int) ;
 int i2c_detect_tries ;
 scalar_t__ i2c_r (struct sd*,int) ;
 int i2c_w (struct sd*,int,int) ;
 int msleep (int) ;
 int ov51x_set_slave_ids (struct sd*,int ) ;

__attribute__((used)) static int init_ov_sensor(struct sd *sd, u8 slave)
{
 int i;

 ov51x_set_slave_ids(sd, slave);


 i2c_w(sd, 0x12, 0x80);


 msleep(150);

 for (i = 0; i < i2c_detect_tries; i++) {
  if (i2c_r(sd, OV7610_REG_ID_HIGH) == 0x7f &&
      i2c_r(sd, OV7610_REG_ID_LOW) == 0xa2) {
   PDEBUG(D_PROBE, "I2C synced in %d attempt(s)", i);
   return 0;
  }


  i2c_w(sd, 0x12, 0x80);


  msleep(150);


  if (i2c_r(sd, 0x00) < 0)
   return -1;
 }
 return -1;
}
