
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct device {int dummy; } ;
struct i2c_adapter {struct device dev; } ;


 scalar_t__ DME1737_COMPANY_SMSC ;
 int DME1737_REG_COMPANY ;
 int DME1737_REG_VERSTEP ;
 scalar_t__ DME1737_VERSTEP ;
 scalar_t__ DME1737_VERSTEP_MASK ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 scalar_t__ SCH5027_VERSTEP ;
 int dev_info (struct device*,char*,char*,int ,scalar_t__) ;
 int dme1737 ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 scalar_t__ i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int sch5027 ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int dme1737_i2c_detect(struct i2c_client *client, int kind,
         struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 struct device *dev = &adapter->dev;
 u8 company, verstep = 0;
 const char *name;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  return -ENODEV;
 }



 if (kind < 0) {
  company = i2c_smbus_read_byte_data(client, DME1737_REG_COMPANY);
  verstep = i2c_smbus_read_byte_data(client, DME1737_REG_VERSTEP);

  if (company == DME1737_COMPANY_SMSC &&
      (verstep & DME1737_VERSTEP_MASK) == DME1737_VERSTEP) {
   kind = dme1737;
  } else if (company == DME1737_COMPANY_SMSC &&
      verstep == SCH5027_VERSTEP) {
   kind = sch5027;
  } else {
   return -ENODEV;
  }
 }

 if (kind == sch5027) {
  name = "sch5027";
 } else {
  kind = dme1737;
  name = "dme1737";
 }

 dev_info(dev, "Found a %s chip at 0x%02x (rev 0x%02x).\n",
   kind == sch5027 ? "SCH5027" : "DME1737", client->addr,
   verstep);
 strlcpy(info->type, name, I2C_NAME_SIZE);

 return 0;
}
