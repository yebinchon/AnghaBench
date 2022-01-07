
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short u8 ;
typedef int u32 ;
struct IR_i2c_init_data {char* name; void* type; int ir_codes; int get_key; int internal_get_key_func; } ;
struct i2c_adapter {int dummy; } ;
struct ivtv {int hw_flags; char* card_name; struct IR_i2c_init_data ir_i2c_init_data; struct i2c_adapter i2c_adap; } ;
struct i2c_board_info {int type; struct IR_i2c_init_data* platform_data; } ;


 unsigned short I2C_CLIENT_END ;
 int I2C_NAME_SIZE ;
 int IR_KBD_GET_KEY_AVERMEDIA_CARDBUS ;
 int IR_KBD_GET_KEY_HAUP ;
 int IR_KBD_GET_KEY_HAUP_XVR ;




 int IVTV_HW_IR_RX_ANY ;
 int IVTV_HW_IR_TX_ANY ;

 int RC_MAP_AVERMEDIA_CARDBUS ;
 int RC_MAP_EMPTY ;
 int RC_MAP_HAUPPAUGE_NEW ;
 int RC_MAP_RC5_TV ;
 void* RC_TYPE_OTHER ;
 void* RC_TYPE_RC5 ;
 void* RC_TYPE_UNKNOWN ;
 int get_key_adaptec ;
 int * i2c_new_probed_device (struct i2c_adapter*,struct i2c_board_info*,unsigned short*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int ivtv_i2c_new_ir(struct ivtv *itv, u32 hw, const char *type, u8 addr)
{
 struct i2c_board_info info;
 struct i2c_adapter *adap = &itv->i2c_adap;
 struct IR_i2c_init_data *init_data = &itv->ir_i2c_init_data;
 unsigned short addr_list[2] = { addr, I2C_CLIENT_END };


 if (hw & IVTV_HW_IR_TX_ANY) {
  if (itv->hw_flags & IVTV_HW_IR_TX_ANY)
   return -1;
  memset(&info, 0, sizeof(struct i2c_board_info));
  strlcpy(info.type, type, I2C_NAME_SIZE);
  return i2c_new_probed_device(adap, &info, addr_list)
          == ((void*)0) ? -1 : 0;
 }


 if (itv->hw_flags & IVTV_HW_IR_RX_ANY)
  return -1;


 switch (hw) {
 case 131:
  init_data->ir_codes = RC_MAP_AVERMEDIA_CARDBUS;
  init_data->internal_get_key_func =
     IR_KBD_GET_KEY_AVERMEDIA_CARDBUS;
  init_data->type = RC_TYPE_OTHER;
  init_data->name = "AVerMedia AVerTV card";
  break;
 case 130:
 case 129:

  init_data->ir_codes = RC_MAP_RC5_TV;
  init_data->internal_get_key_func = IR_KBD_GET_KEY_HAUP;
  init_data->type = RC_TYPE_RC5;
  init_data->name = itv->card_name;
  break;
 case 128:

  init_data->ir_codes = RC_MAP_HAUPPAUGE_NEW;
  init_data->internal_get_key_func = IR_KBD_GET_KEY_HAUP_XVR;
  init_data->type = RC_TYPE_RC5;
  init_data->name = itv->card_name;
  break;
 case 132:
  init_data->get_key = get_key_adaptec;
  init_data->name = itv->card_name;

  init_data->ir_codes = RC_MAP_EMPTY;
  init_data->type = RC_TYPE_UNKNOWN;
  break;
 }

 memset(&info, 0, sizeof(struct i2c_board_info));
 info.platform_data = init_data;
 strlcpy(info.type, type, I2C_NAME_SIZE);

 return i2c_new_probed_device(adap, &info, addr_list) == ((void*)0) ?
        -1 : 0;
}
