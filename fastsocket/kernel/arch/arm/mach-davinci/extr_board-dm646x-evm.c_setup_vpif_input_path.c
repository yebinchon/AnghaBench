
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 int TVP5147_CH0 ;
 int TVP5147_CH1 ;
 int TVP5147_INPUT ;
 int TVP7002_INPUT ;
 int cpld_client ;
 int i2c_smbus_read_byte (int ) ;
 int i2c_smbus_write_byte (int ,int) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int setup_vpif_input_path(int channel, const char *sub_dev_name)
{
 int err = 0;
 int val;


 if (channel != 0)
  return 0;

 if (!cpld_client)
  return -ENXIO;

 val = i2c_smbus_read_byte(cpld_client);
 if (val < 0)
  return val;

 if (!strcmp(sub_dev_name, TVP5147_CH0) ||
     !strcmp(sub_dev_name, TVP5147_CH1))
  val &= TVP5147_INPUT;
 else
  val |= TVP7002_INPUT;

 err = i2c_smbus_write_byte(cpld_client, val);
 if (err)
  return err;
 return 0;
}
