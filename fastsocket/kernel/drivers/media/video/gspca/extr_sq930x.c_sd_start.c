
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {int sensor; int do_ctrl; int type; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; int usb_err; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;


 int ARRAY_SIZE (int ) ;
 int Creative_live_motion ;



 int SENSOR_MT9V111 ;
 int SQ930_CTRL_CAP_STOP ;
 int SQ930_GPIO_DFL_LED ;
 int SQ930_GPIO_EXTRA2 ;
 int SQ930_GPIO_RSTBAR ;
 int bridge_init (struct sd*) ;
 int global_init (struct sd*,int ) ;
 int gpio_set (struct sd*,int,int) ;
 int i2c_write (struct sd*,int ,int ) ;
 int icx098bq_start_0 ;
 int icx098bq_start_1 ;
 int icx098bq_start_2 ;
 int lz24bp_ppl (struct sd*,int) ;
 int lz24bp_start_0 ;
 int lz24bp_start_1_clm ;
 int lz24bp_start_1_gen ;
 int lz24bp_start_2 ;
 int mi0360_init_23 ;
 int mi0360_init_24 ;
 int mi0360_init_25 ;
 int mi0360_start_0 ;
 int mi0360_start_1 ;
 int mi0360_start_2 ;
 int mi0360_start_3 ;
 int mi0360_start_4 ;
 int msleep (int) ;
 int mt9v111_init_0 ;
 int mt9v111_init_1 ;
 int mt9v111_init_2 ;
 int mt9v111_init_3 ;
 int mt9v111_init_4 ;
 int mt9v111_start_1 ;
 int reg_w (struct gspca_dev*,int ,int) ;
 int send_start (struct gspca_dev*) ;
 int send_stop (struct gspca_dev*) ;
 int ucbus_write (struct gspca_dev*,int ,int ,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int mode;

 bridge_init(sd);
 global_init(sd, 0);
 msleep(100);

 switch (sd->sensor) {
 case 130:
  ucbus_write(gspca_dev, icx098bq_start_0,
    ARRAY_SIZE(icx098bq_start_0),
    8);
  ucbus_write(gspca_dev, icx098bq_start_1,
    ARRAY_SIZE(icx098bq_start_1),
    5);
  ucbus_write(gspca_dev, icx098bq_start_2,
    ARRAY_SIZE(icx098bq_start_2),
    6);
  msleep(50);


  send_start(gspca_dev);
  gpio_set(sd, SQ930_GPIO_EXTRA2 | SQ930_GPIO_RSTBAR, 0x00ff);
  msleep(70);
  reg_w(gspca_dev, SQ930_CTRL_CAP_STOP, 0x0000);
  gpio_set(sd, 0x7f, 0x00ff);


  send_start(gspca_dev);
  gpio_set(sd, SQ930_GPIO_EXTRA2 | SQ930_GPIO_RSTBAR, 0x00ff);
  goto out;
 case 129:
  ucbus_write(gspca_dev, lz24bp_start_0,
    ARRAY_SIZE(lz24bp_start_0),
    8);
  if (sd->type != Creative_live_motion)
   ucbus_write(gspca_dev, lz24bp_start_1_gen,
     ARRAY_SIZE(lz24bp_start_1_gen),
     5);
  else
   ucbus_write(gspca_dev, lz24bp_start_1_clm,
     ARRAY_SIZE(lz24bp_start_1_clm),
     5);
  ucbus_write(gspca_dev, lz24bp_start_2,
    ARRAY_SIZE(lz24bp_start_2),
    6);
  mode = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;
  lz24bp_ppl(sd, mode == 1 ? 0x0564 : 0x0310);
  msleep(10);
  break;
 case 128:
  ucbus_write(gspca_dev, mi0360_start_0,
    ARRAY_SIZE(mi0360_start_0),
    8);
  i2c_write(sd, mi0360_init_23,
    ARRAY_SIZE(mi0360_init_23));
  i2c_write(sd, mi0360_init_24,
    ARRAY_SIZE(mi0360_init_24));
  i2c_write(sd, mi0360_init_25,
    ARRAY_SIZE(mi0360_init_25));
  ucbus_write(gspca_dev, mi0360_start_1,
    ARRAY_SIZE(mi0360_start_1),
    5);
  i2c_write(sd, mi0360_start_2,
    ARRAY_SIZE(mi0360_start_2));
  i2c_write(sd, mi0360_start_3,
    ARRAY_SIZE(mi0360_start_3));


  send_start(gspca_dev);
  msleep(60);
  send_stop(gspca_dev);

  i2c_write(sd,
   mi0360_start_4, ARRAY_SIZE(mi0360_start_4));
  break;
 default:

  ucbus_write(gspca_dev, mi0360_start_0,
    ARRAY_SIZE(mi0360_start_0),
    8);
  i2c_write(sd, mt9v111_init_0,
    ARRAY_SIZE(mt9v111_init_0));
  i2c_write(sd, mt9v111_init_1,
    ARRAY_SIZE(mt9v111_init_1));
  i2c_write(sd, mt9v111_init_2,
    ARRAY_SIZE(mt9v111_init_2));
  ucbus_write(gspca_dev, mt9v111_start_1,
    ARRAY_SIZE(mt9v111_start_1),
    5);
  i2c_write(sd, mt9v111_init_3,
    ARRAY_SIZE(mt9v111_init_3));
  i2c_write(sd, mt9v111_init_4,
    ARRAY_SIZE(mt9v111_init_4));
  break;
 }

 send_start(gspca_dev);
out:
 msleep(1000);

 if (sd->sensor == SENSOR_MT9V111)
  gpio_set(sd, SQ930_GPIO_DFL_LED, SQ930_GPIO_DFL_LED);

 sd->do_ctrl = 1;

 return gspca_dev->usb_err;
}
