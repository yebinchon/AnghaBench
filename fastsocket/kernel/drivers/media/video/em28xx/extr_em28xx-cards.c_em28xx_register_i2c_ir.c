
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_board_info {char* name; struct i2c_board_info* platform_data; int get_key; int ir_codes; int type; } ;
struct em28xx {int model; int i2c_adap; struct i2c_board_info init_data; } ;







 int I2C_CLIENT_END ;
 int I2C_NAME_SIZE ;
 int RC_MAP_EM_TERRATEC ;
 int RC_MAP_PINNACLE_GREY ;
 int RC_MAP_RC5_HAUPPAUGE_NEW ;
 int RC_MAP_WINFAST_USBII_DELUXE ;
 scalar_t__ disable_ir ;
 int em28xx_get_key_em_haup ;
 int em28xx_get_key_pinnacle_usb_grey ;
 int em28xx_get_key_terratec ;
 int em28xx_get_key_winfast_usbii_deluxe ;
 int i2c_new_probed_device (int *,struct i2c_board_info*,unsigned short const*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strlcpy (int ,char*,int ) ;

void em28xx_register_i2c_ir(struct em28xx *dev)
{



 struct i2c_board_info info;
 const unsigned short addr_list[] = {
   0x1f, 0x30, 0x47, I2C_CLIENT_END
 };

 if (disable_ir)
  return;

 memset(&info, 0, sizeof(struct i2c_board_info));
 memset(&dev->init_data, 0, sizeof(dev->init_data));
 strlcpy(info.type, "ir_video", I2C_NAME_SIZE);


 switch (dev->model) {
 case 132:
 case 128:
  dev->init_data.ir_codes = RC_MAP_EM_TERRATEC;
  dev->init_data.get_key = em28xx_get_key_terratec;
  dev->init_data.name = "i2c IR (EM28XX Terratec)";
  break;
 case 129:
  dev->init_data.ir_codes = RC_MAP_PINNACLE_GREY;
  dev->init_data.get_key = em28xx_get_key_pinnacle_usb_grey;
  dev->init_data.name = "i2c IR (EM28XX Pinnacle PCTV)";
  break;
 case 131:
  dev->init_data.ir_codes = RC_MAP_RC5_HAUPPAUGE_NEW;
  dev->init_data.get_key = em28xx_get_key_em_haup;
  dev->init_data.name = "i2c IR (EM2840 Hauppauge)";
  break;
 case 130:
  dev->init_data.ir_codes = RC_MAP_WINFAST_USBII_DELUXE;
  dev->init_data.get_key = em28xx_get_key_winfast_usbii_deluxe;
  dev->init_data.name = "i2c IR (EM2820 Winfast TV USBII Deluxe)";
  break;
 }

 if (dev->init_data.name)
  info.platform_data = &dev->init_data;
 i2c_new_probed_device(&dev->i2c_adap, &info, addr_list);
}
