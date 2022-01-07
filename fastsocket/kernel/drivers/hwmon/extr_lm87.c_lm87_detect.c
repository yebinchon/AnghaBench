
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int LM87_REG_COMPANY_ID ;
 int LM87_REG_CONFIG ;
 int LM87_REG_REVISION ;
 int adm1024 ;
 int dev_dbg (int *,char*,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int lm87 ;
 int lm87_read_value (struct i2c_client*,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm87_detect(struct i2c_client *new_client, int kind,
         struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 static const char *names[] = { "lm87", "adm1024" };

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;


 if (kind == 0)
  kind = lm87;


 if (kind < 0) {
  u8 cid = lm87_read_value(new_client, LM87_REG_COMPANY_ID);
  u8 rev = lm87_read_value(new_client, LM87_REG_REVISION);

  if (cid == 0x02
   && (rev >= 0x01 && rev <= 0x08))
   kind = lm87;
  else if (cid == 0x41
        && (rev & 0xf0) == 0x10)
   kind = adm1024;

  if (kind < 0
   || (lm87_read_value(new_client, LM87_REG_CONFIG) & 0x80)) {
   dev_dbg(&adapter->dev,
    "LM87 detection failed at 0x%02x.\n",
    new_client->addr);
   return -ENODEV;
  }
 }

 strlcpy(info->type, names[kind - 1], I2C_NAME_SIZE);

 return 0;
}
