
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int FSCHMD_REG_IDENT_0 ;
 int FSCHMD_REG_IDENT_1 ;
 int FSCHMD_REG_IDENT_2 ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int fschds ;
 int fscher ;
 int fschmd ;
 TYPE_1__* fschmd_id ;
 int fschrc ;
 int fscpos ;
 int fscscy ;
 int fscsyl ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 char i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strcmp (char*,char*) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int fschmd_detect(struct i2c_client *client, int kind,
    struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;


 if (kind <= 0) {
  char id[4];

  id[0] = i2c_smbus_read_byte_data(client,
    FSCHMD_REG_IDENT_0);
  id[1] = i2c_smbus_read_byte_data(client,
    FSCHMD_REG_IDENT_1);
  id[2] = i2c_smbus_read_byte_data(client,
    FSCHMD_REG_IDENT_2);
  id[3] = '\0';

  if (!strcmp(id, "PEG"))
   kind = fscpos;
  else if (!strcmp(id, "HER"))
   kind = fscher;
  else if (!strcmp(id, "SCY"))
   kind = fscscy;
  else if (!strcmp(id, "HRC"))
   kind = fschrc;
  else if (!strcmp(id, "HMD"))
   kind = fschmd;
  else if (!strcmp(id, "HDS"))
   kind = fschds;
  else if (!strcmp(id, "SYL"))
   kind = fscsyl;
  else
   return -ENODEV;
 }

 strlcpy(info->type, fschmd_id[kind - 1].name, I2C_NAME_SIZE);

 return 0;
}
