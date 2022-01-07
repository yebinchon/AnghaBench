
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_board_info {char* name; unsigned short addr; struct i2c_board_info* platform_data; int internal_get_key_func; int type; int ir_codes; int get_key; } ;
struct cx88_core {scalar_t__ i2c_rc; int boardnr; int i2c_adap; struct i2c_board_info init_data; } ;



 int I2C_CLIENT_END ;
 int I2C_NAME_SIZE ;
 int I2C_SMBUS_QUICK ;
 int I2C_SMBUS_READ ;
 int IR_KBD_GET_KEY_HAUP_XVR ;
 int RC_MAP_EMPTY ;
 int RC_MAP_HAUPPAUGE_NEW ;
 int RC_TYPE_RC5 ;
 int RC_TYPE_UNKNOWN ;
 int get_key_pvr2000 ;
 int i2c_new_device (int *,struct i2c_board_info*) ;
 scalar_t__ i2c_smbus_xfer (int *,unsigned short const,int ,int ,int ,int ,int *) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strlcpy (int ,char*,int ) ;

void cx88_i2c_init_ir(struct cx88_core *core)
{
 struct i2c_board_info info;
 const unsigned short default_addr_list[] = {
  0x18, 0x6b, 0x71,
  I2C_CLIENT_END
 };
 const unsigned short pvr2000_addr_list[] = {
  0x18, 0x1a,
  I2C_CLIENT_END
 };
 const unsigned short *addr_list = default_addr_list;
 const unsigned short *addrp;

 if (0 != core->i2c_rc)
  return;

 memset(&info, 0, sizeof(struct i2c_board_info));
 strlcpy(info.type, "ir_video", I2C_NAME_SIZE);

 switch (core->boardnr) {
 case 128:
  addr_list = pvr2000_addr_list;
  core->init_data.name = "cx88 Leadtek PVR 2000 remote";
  core->init_data.type = RC_TYPE_UNKNOWN;
  core->init_data.get_key = get_key_pvr2000;
  core->init_data.ir_codes = RC_MAP_EMPTY;
  break;
 }
 for (addrp = addr_list; *addrp != I2C_CLIENT_END; addrp++) {
  info.platform_data = ((void*)0);
  memset(&core->init_data, 0, sizeof(core->init_data));

  if (*addrp == 0x71) {

   core->init_data.name = "cx88 Hauppauge XVR remote";
   core->init_data.ir_codes = RC_MAP_HAUPPAUGE_NEW;
   core->init_data.type = RC_TYPE_RC5;
   core->init_data.internal_get_key_func = IR_KBD_GET_KEY_HAUP_XVR;

   info.platform_data = &core->init_data;
  }
  if (i2c_smbus_xfer(&core->i2c_adap, *addrp, 0,
     I2C_SMBUS_READ, 0,
     I2C_SMBUS_QUICK, ((void*)0)) >= 0) {
   info.addr = *addrp;
   i2c_new_device(&core->i2c_adap, &info);
   break;
  }
 }
}
