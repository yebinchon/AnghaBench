
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int LM85_COMPANY_ANALOG_DEV ;
 int LM85_COMPANY_NATIONAL ;
 int LM85_COMPANY_SMSC ;
 int LM85_REG_COMPANY ;
 int LM85_REG_VERSTEP ;
 int LM85_VERSTEP_GENERIC ;
 int LM85_VERSTEP_GENERIC2 ;




 int LM85_VERSTEP_VMASK ;



 int any_chip ;
 int dev_dbg (int *,char*,...) ;


 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int lm85_is_fake (struct i2c_client*) ;
 int lm85_read_value (struct i2c_client*,int ) ;


 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm85_detect(struct i2c_client *client, int kind,
         struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int address = client->addr;
 const char *type_name;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {

  return -ENODEV;
 }


 if (kind < 0) {
  int company = lm85_read_value(client, LM85_REG_COMPANY);
  int verstep = lm85_read_value(client, LM85_REG_VERSTEP);

  dev_dbg(&adapter->dev, "Detecting device at 0x%02x with "
   "COMPANY: 0x%02x and VERSTEP: 0x%02x\n",
   address, company, verstep);


  if ((verstep & LM85_VERSTEP_VMASK) != LM85_VERSTEP_GENERIC &&
      (verstep & LM85_VERSTEP_VMASK) != LM85_VERSTEP_GENERIC2) {
   dev_dbg(&adapter->dev, "Autodetection failed: "
    "unsupported version\n");
   return -ENODEV;
  }
  kind = any_chip;


  if (company == LM85_COMPANY_NATIONAL) {
   switch (verstep) {
   case 137:
    kind = 128;
    break;
   case 138:
    kind = 129;
    break;
   case 136:
   case 135:

    if (lm85_is_fake(client)) {
     dev_dbg(&adapter->dev,
      "Found Winbond WPCD377I, "
      "ignoring\n");
     return -ENODEV;
    }
    break;
   }
  } else if (company == LM85_COMPANY_ANALOG_DEV) {
   switch (verstep) {
   case 146:
    kind = 134;
    break;
   case 145:
   case 144:
    kind = 133;
    break;
   case 143:
   case 142:
    kind = 132;
    break;
   }
  } else if (company == LM85_COMPANY_SMSC) {
   switch (verstep) {
   case 141:
   case 140:

    kind = 131;
    break;
   case 139:
    kind = 130;
    break;
   }
  } else {
   dev_dbg(&adapter->dev, "Autodetection failed: "
    "unknown vendor\n");
   return -ENODEV;
  }
 }

 switch (kind) {
 case 129:
  type_name = "lm85b";
  break;
 case 128:
  type_name = "lm85c";
  break;
 case 134:
  type_name = "adm1027";
  break;
 case 133:
  type_name = "adt7463";
  break;
 case 132:
  type_name = "adt7468";
  break;
 case 131:
  type_name = "emc6d100";
  break;
 case 130:
  type_name = "emc6d102";
  break;
 default:
  type_name = "lm85";
 }
 strlcpy(info->type, type_name, I2C_NAME_SIZE);

 return 0;
}
