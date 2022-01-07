
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm78_data {int update_lock; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int LM78_REG_CHIPID ;
 int LM78_REG_CONFIG ;
 int LM78_REG_I2C_ADDR ;
 int dev_dbg (int *,char*,int) ;
 int dev_warn (int *,char*,int ,int) ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int lm78 ;
 scalar_t__ lm78_alias_detect (struct i2c_client*,int) ;
 struct lm78_data* lm78_data_if_isa () ;

 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm78_i2c_detect(struct i2c_client *client, int kind,
      struct i2c_board_info *info)
{
 int i;
 struct lm78_data *isa = lm78_data_if_isa();
 const char *client_name;
 struct i2c_adapter *adapter = client->adapter;
 int address = client->addr;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;




 if (isa)
  mutex_lock(&isa->update_lock);

 if (kind < 0) {
  if ((i2c_smbus_read_byte_data(client, LM78_REG_CONFIG) & 0x80)
   || i2c_smbus_read_byte_data(client, LM78_REG_I2C_ADDR)
      != address)
   goto err_nodev;


  i = i2c_smbus_read_byte_data(client, 0x4f);
  if (i == 0xa3 || i == 0x5c)
   goto err_nodev;
 }


 if (kind <= 0) {
  i = i2c_smbus_read_byte_data(client, LM78_REG_CHIPID);
  if (i == 0x00 || i == 0x20
   || i == 0x40)
   kind = lm78;
  else if ((i & 0xfe) == 0xc0)
   kind = 128;
  else {
   if (kind == 0)
    dev_warn(&adapter->dev, "Ignoring 'force' "
     "parameter for unknown chip at "
     "adapter %d, address 0x%02x\n",
     i2c_adapter_id(adapter), address);
   goto err_nodev;
  }

  if (lm78_alias_detect(client, i)) {
   dev_dbg(&adapter->dev, "Device at 0x%02x appears to "
    "be the same as ISA device\n", address);
   goto err_nodev;
  }
 }

 if (isa)
  mutex_unlock(&isa->update_lock);

 switch (kind) {
 case 128:
  client_name = "lm79";
  break;
 default:
  client_name = "lm78";
 }
 strlcpy(info->type, client_name, I2C_NAME_SIZE);

 return 0;

 err_nodev:
 if (isa)
  mutex_unlock(&isa->update_lock);
 return -ENODEV;
}
