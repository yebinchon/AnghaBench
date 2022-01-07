
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int THMC50_REG_COMPANY_ID ;
 int THMC50_REG_CONF ;
 int THMC50_REG_DIE_CODE ;
 int adm1022 ;
 int* adm1022_temp3 ;
 int adm1022_temp3_num ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 unsigned int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,unsigned int) ;
 int pr_debug (char*,...) ;
 int strlcpy (int ,char const*,int ) ;
 int thmc50 ;

__attribute__((used)) static int thmc50_detect(struct i2c_client *client, int kind,
    struct i2c_board_info *info)
{
 unsigned company;
 unsigned revision;
 unsigned config;
 struct i2c_adapter *adapter = client->adapter;
 int err = 0;
 const char *type_name;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  pr_debug("thmc50: detect failed, "
    "smbus byte data not supported!\n");
  return -ENODEV;
 }

 pr_debug("thmc50: Probing for THMC50 at 0x%2X on bus %d\n",
   client->addr, i2c_adapter_id(client->adapter));


 company = i2c_smbus_read_byte_data(client, THMC50_REG_COMPANY_ID);
 revision = i2c_smbus_read_byte_data(client, THMC50_REG_DIE_CODE);
 config = i2c_smbus_read_byte_data(client, THMC50_REG_CONF);

 if (kind == 0)
  kind = thmc50;
 else if (kind < 0) {
  err = -ENODEV;
  if (revision >= 0xc0 && ((config & 0x10) == 0)) {
   if (company == 0x49) {
    kind = thmc50;
    err = 0;
   } else if (company == 0x41) {
    kind = adm1022;
    err = 0;
   }
  }
 }
 if (err == -ENODEV) {
  pr_debug("thmc50: Detection of THMC50/ADM1022 failed\n");
  return err;
 }

 if (kind == adm1022) {
  int id = i2c_adapter_id(client->adapter);
  int i;

  type_name = "adm1022";
  for (i = 0; i + 1 < adm1022_temp3_num; i += 2)
   if (adm1022_temp3[i] == id &&
       adm1022_temp3[i + 1] == client->addr) {

    config |= (1 << 7);
    i2c_smbus_write_byte_data(client,
         THMC50_REG_CONF,
         config);
    break;
   }
 } else {
  type_name = "thmc50";
 }
 pr_debug("thmc50: Detected %s (version %x, revision %x)\n",
   type_name, (revision >> 4) - 0xc, revision & 0xf);

 strlcpy(info->type, type_name, I2C_NAME_SIZE);

 return 0;
}
