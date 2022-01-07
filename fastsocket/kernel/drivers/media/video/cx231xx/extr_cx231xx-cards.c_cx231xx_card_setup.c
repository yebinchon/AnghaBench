
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ decoder; scalar_t__ tuner_type; size_t tuner_i2c_master; } ;
struct cx231xx {size_t model; int tuner_addr; int * sd_tuner; TYPE_2__ board; TYPE_1__* i2c_bus; int v4l2_dev; int * sd_cx25840; int tuner_type; } ;
struct TYPE_6__ {int tuner_addr; int tuner_type; } ;
struct TYPE_4__ {int i2c_adap; } ;


 scalar_t__ CX231XX_AVDECODER ;
 scalar_t__ TUNER_ABSENT ;
 int core ;
 TYPE_3__* cx231xx_boards ;
 int cx231xx_config_tuner (struct cx231xx*) ;
 int cx231xx_info (char*) ;
 int cx231xx_set_model (struct cx231xx*) ;
 int cx25840_call (struct cx231xx*,int ,int ) ;
 int load_fw ;
 void* v4l2_i2c_new_subdev (int *,int *,char*,int,int *) ;

void cx231xx_card_setup(struct cx231xx *dev)
{

 cx231xx_set_model(dev);

 dev->tuner_type = cx231xx_boards[dev->model].tuner_type;
 if (cx231xx_boards[dev->model].tuner_addr)
  dev->tuner_addr = cx231xx_boards[dev->model].tuner_addr;


 if (dev->board.decoder == CX231XX_AVDECODER) {
  dev->sd_cx25840 = v4l2_i2c_new_subdev(&dev->v4l2_dev,
     &dev->i2c_bus[0].i2c_adap,
     "cx25840", 0x88 >> 1, ((void*)0));
  if (dev->sd_cx25840 == ((void*)0))
   cx231xx_info("cx25840 subdev registration failure\n");
  cx25840_call(dev, core, load_fw);

 }


 if (dev->board.tuner_type != TUNER_ABSENT) {
  dev->sd_tuner = v4l2_i2c_new_subdev(&dev->v4l2_dev,
          &dev->i2c_bus[dev->board.tuner_i2c_master].i2c_adap,
          "tuner",
          dev->tuner_addr, ((void*)0));
  if (dev->sd_tuner == ((void*)0))
   cx231xx_info("tuner subdev registration failure\n");
  else
   cx231xx_config_tuner(dev);
 }
}
