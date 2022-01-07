
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short u8 ;
typedef int u32 ;
struct i2c_board_info {struct IR_i2c_init_data* platform_data; int type; } ;
struct i2c_adapter {int dummy; } ;
struct IR_i2c_init_data {int name; int type; int internal_get_key_func; int ir_codes; } ;
struct cx18 {int card_name; struct IR_i2c_init_data ir_i2c_init_data; } ;



 unsigned short I2C_CLIENT_END ;
 int I2C_NAME_SIZE ;
 int IR_KBD_GET_KEY_HAUP_XVR ;
 int RC_MAP_HAUPPAUGE_NEW ;
 int RC_TYPE_RC5 ;
 int * i2c_new_probed_device (struct i2c_adapter*,struct i2c_board_info*,unsigned short*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int cx18_i2c_new_ir(struct cx18 *cx, struct i2c_adapter *adap, u32 hw,
      const char *type, u8 addr)
{
 struct i2c_board_info info;
 struct IR_i2c_init_data *init_data = &cx->ir_i2c_init_data;
 unsigned short addr_list[2] = { addr, I2C_CLIENT_END };

 memset(&info, 0, sizeof(struct i2c_board_info));
 strlcpy(info.type, type, I2C_NAME_SIZE);


 switch (hw) {
 case 128:
  init_data->ir_codes = RC_MAP_HAUPPAUGE_NEW;
  init_data->internal_get_key_func = IR_KBD_GET_KEY_HAUP_XVR;
  init_data->type = RC_TYPE_RC5;
  init_data->name = cx->card_name;
  info.platform_data = init_data;
  break;
 }

 return i2c_new_probed_device(adap, &info, addr_list) == ((void*)0) ?
        -1 : 0;
}
