
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int DS1374_REG_CR ;
 int DS1374_REG_CR_AIE ;
 int DS1374_REG_CR_WACE ;
 int DS1374_REG_SR ;
 int DS1374_REG_SR_AF ;
 int DS1374_REG_SR_OSF ;
 int dev_warn (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int ds1374_check_rtc_status(struct i2c_client *client)
{
 int ret = 0;
 int control, stat;

 stat = i2c_smbus_read_byte_data(client, DS1374_REG_SR);
 if (stat < 0)
  return stat;

 if (stat & DS1374_REG_SR_OSF)
  dev_warn(&client->dev,
           "oscillator discontinuity flagged, "
           "time unreliable\n");

 stat &= ~(DS1374_REG_SR_OSF | DS1374_REG_SR_AF);

 ret = i2c_smbus_write_byte_data(client, DS1374_REG_SR, stat);
 if (ret < 0)
  return ret;






 control = i2c_smbus_read_byte_data(client, DS1374_REG_CR);
 if (control < 0)
  return control;

 control &= ~(DS1374_REG_CR_WACE | DS1374_REG_CR_AIE);
 return i2c_smbus_write_byte_data(client, DS1374_REG_CR, control);
}
