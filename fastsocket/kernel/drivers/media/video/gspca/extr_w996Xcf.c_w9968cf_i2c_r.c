
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ usb_err; } ;
struct sd {int sensor_addr; TYPE_1__ gspca_dev; } ;


 int D_ERR ;
 int D_USBI ;
 int PDEBUG (int ,char*,int,...) ;
 int w9968cf_smbus_read_ack (struct sd*) ;
 int w9968cf_smbus_read_byte (struct sd*,int*) ;
 int w9968cf_smbus_start (struct sd*) ;
 int w9968cf_smbus_stop (struct sd*) ;
 int w9968cf_smbus_write_byte (struct sd*,int) ;
 int w9968cf_smbus_write_nack (struct sd*) ;
 int w9968cf_write_sb (struct sd*,int) ;

__attribute__((used)) static int w9968cf_i2c_r(struct sd *sd, u8 reg)
{
 int ret = 0;
 u8 value;


 w9968cf_write_sb(sd, 0x0013);

 w9968cf_smbus_start(sd);
 w9968cf_smbus_write_byte(sd, sd->sensor_addr);
 w9968cf_smbus_read_ack(sd);
 w9968cf_smbus_write_byte(sd, reg);
 w9968cf_smbus_read_ack(sd);
 w9968cf_smbus_stop(sd);
 w9968cf_smbus_start(sd);
 w9968cf_smbus_write_byte(sd, sd->sensor_addr + 1);
 w9968cf_smbus_read_ack(sd);
 w9968cf_smbus_read_byte(sd, &value);



 w9968cf_smbus_write_nack(sd);
 w9968cf_smbus_stop(sd);


 w9968cf_write_sb(sd, 0x0030);

 if (sd->gspca_dev.usb_err >= 0) {
  ret = value;
  PDEBUG(D_USBI, "i2c [0x%02X] -> 0x%02X", reg, value);
 } else
  PDEBUG(D_ERR, "i2c read [0x%02x] failed", reg);

 return ret;
}
