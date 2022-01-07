
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct tveeprom {int audio_processor; scalar_t__ tuner_type; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {int has_msp34xx; scalar_t__ valid; scalar_t__ decoder; scalar_t__ adecoder; scalar_t__ tvaudio_addr; scalar_t__ tuner_type; scalar_t__ radio_addr; TYPE_1__ radio; scalar_t__ has_snapshot_button; scalar_t__ has_ir_i2c; int tuner_gpio; int name; scalar_t__ is_webcam; } ;
struct TYPE_7__ {int addr; } ;
struct em28xx {int progressive; int model; scalar_t__ tuner_addr; int tda9887_conf; int i2s_speed; scalar_t__ em28xx_sensor; int i2c_adap; int v4l2_dev; TYPE_2__ board; int sensor_xtal; scalar_t__ tuner_type; int eedata; TYPE_3__ i2c_client; } ;
typedef enum v4l2_i2c_tuner_type { ____Placeholder_v4l2_i2c_tuner_type } v4l2_i2c_tuner_type ;
struct TYPE_8__ {scalar_t__ tuner_addr; int tda9887_conf; scalar_t__ tuner_type; } ;


 int ADDRS_DEMOD ;
 int ADDRS_TV ;
 int ADDRS_TV_WITH_DEMOD ;
 int EM28XX_ANALOG_MODE ;
 scalar_t__ EM28XX_BOARD_NOT_VALIDATED ;
 scalar_t__ EM28XX_MT9V011 ;
 int EM28XX_R08_GPIO ;
 scalar_t__ EM28XX_SAA711X ;
 scalar_t__ EM28XX_TVAUDIO ;
 scalar_t__ EM28XX_TVP5150 ;
 int TDA9887_PRESENT ;
 scalar_t__ TUNER_ABSENT ;
 int V4L2_IDENT_MSPX4XX ;
 int core ;
 int disable_ir ;
 TYPE_4__* em28xx_boards ;
 int em28xx_errdev (char*) ;
 int em28xx_gpio_set (struct em28xx*,int ) ;
 int em28xx_hint_board (struct em28xx*) ;
 scalar_t__ em28xx_hint_sensor (struct em28xx*) ;
 int em28xx_info (char*,int ,int) ;
 int em28xx_ir_init (struct em28xx*) ;
 int em28xx_pre_card_setup (struct em28xx*) ;
 int em28xx_register_snapshot_button (struct em28xx*) ;
 int em28xx_set_mode (struct em28xx*,int ) ;
 int em28xx_set_model (struct em28xx*) ;
 int em28xx_tuner_setup (struct em28xx*) ;
 int em28xx_write_reg (struct em28xx*,int,int) ;
 int msleep (int) ;
 int * msp3400_addrs ;
 int * mt9v011_addrs ;
 int request_module (char*) ;
 int s_config ;
 int * saa711x_addrs ;
 scalar_t__ tuner ;
 int tveeprom_hauppauge_analog (TYPE_3__*,struct tveeprom*,int ) ;
 int * tvp5150_addrs ;
 struct v4l2_subdev* v4l2_i2c_new_subdev (int *,int *,char*,scalar_t__,int *) ;
 scalar_t__ v4l2_i2c_subdev_addr (struct v4l2_subdev*) ;
 int * v4l2_i2c_tuner_addrs (int) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int ,int *) ;

void em28xx_card_setup(struct em28xx *dev)
{




 if (dev->board.is_webcam) {
  if (em28xx_hint_sensor(dev) < 0)
   dev->board.is_webcam = 0;
  else
   dev->progressive = 1;
 }

 if (!dev->board.is_webcam) {
  switch (dev->model) {
  case 135:
  case 138:
  if (em28xx_hint_board(dev) < 0)
   em28xx_errdev("Board not discovered\n");
  else {
   em28xx_set_model(dev);
   em28xx_pre_card_setup(dev);
  }
  break;
  default:
   em28xx_set_model(dev);
  }
 }

 em28xx_info("Identified as %s (card=%d)\n",
      dev->board.name, dev->model);

 dev->tuner_type = em28xx_boards[dev->model].tuner_type;
 if (em28xx_boards[dev->model].tuner_addr)
  dev->tuner_addr = em28xx_boards[dev->model].tuner_addr;

 if (em28xx_boards[dev->model].tda9887_conf)
  dev->tda9887_conf = em28xx_boards[dev->model].tda9887_conf;


 switch (dev->model) {
 case 137:
 case 134:
 case 133:
 case 129:
 case 128:
 {
  struct tveeprom tv;





  dev->i2c_client.addr = 0xa0 >> 1;
  tveeprom_hauppauge_analog(&dev->i2c_client, &tv, dev->eedata);

  dev->tuner_type = tv.tuner_type;

  if (tv.audio_processor == V4L2_IDENT_MSPX4XX) {
   dev->i2s_speed = 2048000;
   dev->board.has_msp34xx = 1;
  }
  break;
 }
 case 131:
  em28xx_write_reg(dev, 0x0d, 0x42);
  msleep(10);
  em28xx_write_reg(dev, EM28XX_R08_GPIO, 0xfd);
  msleep(10);
  break;
 case 136:

  em28xx_write_reg(dev, EM28XX_R08_GPIO, 0xf9);
  break;
 case 135:
 case 138:
 case 132:
  if (!em28xx_hint_board(dev))
   em28xx_set_model(dev);





  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, EM28XX_ANALOG_MODE);
  break;
 case 130:
  if (!em28xx_hint_board(dev))
   em28xx_set_model(dev);





  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, EM28XX_ANALOG_MODE);
  break;
 }





 if (dev->board.has_snapshot_button)
  em28xx_register_snapshot_button(dev);

 if (dev->board.valid == EM28XX_BOARD_NOT_VALIDATED) {
  em28xx_errdev("\n\n");
  em28xx_errdev("The support for this board weren't "
         "valid yet.\n");
  em28xx_errdev("Please send a report of having this working\n");
  em28xx_errdev("not to V4L mailing list (and/or to other "
    "addresses)\n\n");
 }


 if (tuner >= 0)
  dev->tuner_type = tuner;


 if (dev->board.has_msp34xx)
  v4l2_i2c_new_subdev(&dev->v4l2_dev, &dev->i2c_adap,
   "msp3400", 0, msp3400_addrs);

 if (dev->board.decoder == EM28XX_SAA711X)
  v4l2_i2c_new_subdev(&dev->v4l2_dev, &dev->i2c_adap,
   "saa7115_auto", 0, saa711x_addrs);

 if (dev->board.decoder == EM28XX_TVP5150)
  v4l2_i2c_new_subdev(&dev->v4l2_dev, &dev->i2c_adap,
   "tvp5150", 0, tvp5150_addrs);

 if (dev->em28xx_sensor == EM28XX_MT9V011) {
  struct v4l2_subdev *sd;

  sd = v4l2_i2c_new_subdev(&dev->v4l2_dev,
    &dev->i2c_adap, "mt9v011", 0, mt9v011_addrs);
  v4l2_subdev_call(sd, core, s_config, 0, &dev->sensor_xtal);
 }


 if (dev->board.adecoder == EM28XX_TVAUDIO)
  v4l2_i2c_new_subdev(&dev->v4l2_dev, &dev->i2c_adap,
   "tvaudio", dev->board.tvaudio_addr, ((void*)0));

 if (dev->board.tuner_type != TUNER_ABSENT) {
  int has_demod = (dev->tda9887_conf & TDA9887_PRESENT);

  if (dev->board.radio.type)
   v4l2_i2c_new_subdev(&dev->v4l2_dev, &dev->i2c_adap,
    "tuner", dev->board.radio_addr, ((void*)0));

  if (has_demod)
   v4l2_i2c_new_subdev(&dev->v4l2_dev,
    &dev->i2c_adap, "tuner",
    0, v4l2_i2c_tuner_addrs(ADDRS_DEMOD));
  if (dev->tuner_addr == 0) {
   enum v4l2_i2c_tuner_type type =
    has_demod ? ADDRS_TV_WITH_DEMOD : ADDRS_TV;
   struct v4l2_subdev *sd;

   sd = v4l2_i2c_new_subdev(&dev->v4l2_dev,
    &dev->i2c_adap, "tuner",
    0, v4l2_i2c_tuner_addrs(type));

   if (sd)
    dev->tuner_addr = v4l2_i2c_subdev_addr(sd);
  } else {
   v4l2_i2c_new_subdev(&dev->v4l2_dev, &dev->i2c_adap,
    "tuner", dev->tuner_addr, ((void*)0));
  }
 }

 em28xx_tuner_setup(dev);

 if(!disable_ir)
  em28xx_ir_init(dev);
}
