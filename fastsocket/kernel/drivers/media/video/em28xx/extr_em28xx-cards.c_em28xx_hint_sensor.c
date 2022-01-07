
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int xclk; } ;
struct TYPE_6__ {int addr; } ;
struct em28xx {size_t model; int sensor_xres; int sensor_yres; int sensor_xtal; int vinmode; int vinctl; int em28xx_sensor; TYPE_1__ board; TYPE_2__ i2c_client; } ;
typedef int __be16 ;
struct TYPE_7__ {int name; } ;


 int EINVAL ;
 void* EM2750_BOARD_UNKNOWN ;
 size_t EM2820_BOARD_SILVERCREST_WEBCAM ;
 int EM28XX_MT9M001 ;
 int EM28XX_MT9M111 ;
 int EM28XX_MT9V011 ;
 int EM28XX_XCLK_FREQUENCY_48MHZ ;
 int EM28XX_XCLK_FREQUENCY_4_3MHZ ;
 int be16_to_cpu (int ) ;
 TYPE_4__* em28xx_boards ;
 int em28xx_errdev (char*,char*,int ) ;
 int em28xx_initialize_mt9m001 (struct em28xx*) ;
 int em28xx_initialize_mt9m111 (struct em28xx*) ;
 int em28xx_pre_card_setup (struct em28xx*) ;
 int em28xx_set_model (struct em28xx*) ;
 int i2c_master_recv (TYPE_2__*,char*,int) ;
 int i2c_master_send (TYPE_2__*,unsigned char*,int) ;
 int printk (char*,int) ;

__attribute__((used)) static int em28xx_hint_sensor(struct em28xx *dev)
{
 int rc;
 char *sensor_name;
 unsigned char cmd;
 __be16 version_be;
 u16 version;


 dev->i2c_client.addr = 0xba >> 1;
 cmd = 0;
 i2c_master_send(&dev->i2c_client, &cmd, 1);
 rc = i2c_master_recv(&dev->i2c_client, (char *)&version_be, 2);
 if (rc != 2)
  return -EINVAL;

 version = be16_to_cpu(version_be);
 switch (version) {
 case 0x8232:
 case 0x8243:
  dev->model = EM2820_BOARD_SILVERCREST_WEBCAM;
  em28xx_set_model(dev);

  sensor_name = "mt9v011";
  dev->em28xx_sensor = EM28XX_MT9V011;
  dev->sensor_xres = 640;
  dev->sensor_yres = 480;
  dev->board.xclk = EM28XX_XCLK_FREQUENCY_4_3MHZ;
  dev->sensor_xtal = 4300000;


  dev->vinmode = 0x0d;
  dev->vinctl = 0x00;

  break;

 case 0x143a:
  dev->model = EM2750_BOARD_UNKNOWN;
  em28xx_set_model(dev);

  sensor_name = "mt9m111";
  dev->board.xclk = EM28XX_XCLK_FREQUENCY_48MHZ;
  dev->em28xx_sensor = EM28XX_MT9M111;
  em28xx_initialize_mt9m111(dev);
  dev->sensor_xres = 640;
  dev->sensor_yres = 512;

  dev->vinmode = 0x0a;
  dev->vinctl = 0x00;

  break;

 case 0x8431:
  dev->model = EM2750_BOARD_UNKNOWN;
  em28xx_set_model(dev);

  sensor_name = "mt9m001";
  dev->em28xx_sensor = EM28XX_MT9M001;
  em28xx_initialize_mt9m001(dev);
  dev->sensor_xres = 1280;
  dev->sensor_yres = 1024;


  dev->vinmode = 0x0c;
  dev->vinctl = 0x00;

  break;
 default:
  printk("Unknown Micron Sensor 0x%04x\n", version);
  return -EINVAL;
 }


 em28xx_pre_card_setup(dev);

 em28xx_errdev("Sensor is %s, using model %s entry.\n",
        sensor_name, em28xx_boards[dev->model].name);

 return 0;
}
