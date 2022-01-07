
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* frontend; } ;
struct videobuf_dvb_frontend {TYPE_2__ dvb; } ;
struct tda827x_config {int dummy; } ;
struct tda1004x_config {int tuner_address; scalar_t__ i2c_gate; } ;
struct saa7134_dev {int i2c_adap; int frontends; } ;
struct TYPE_4__ {int i2c_gate_ctrl; } ;
struct TYPE_6__ {TYPE_1__ ops; } ;


 int EINVAL ;
 TYPE_3__* dvb_attach (int ,...) ;
 int tda10046_attach ;
 int tda827x_attach ;
 int tda8290_i2c_gate_ctrl ;
 struct videobuf_dvb_frontend* videobuf_dvb_get_frontend (int *,int) ;
 int wprintk (char*,int ) ;

__attribute__((used)) static int configure_tda827x_fe(struct saa7134_dev *dev,
    struct tda1004x_config *cdec_conf,
    struct tda827x_config *tuner_conf)
{
 struct videobuf_dvb_frontend *fe0;


 fe0 = videobuf_dvb_get_frontend(&dev->frontends, 1);

 fe0->dvb.frontend = dvb_attach(tda10046_attach, cdec_conf, &dev->i2c_adap);
 if (fe0->dvb.frontend) {
  if (cdec_conf->i2c_gate)
   fe0->dvb.frontend->ops.i2c_gate_ctrl = tda8290_i2c_gate_ctrl;
  if (dvb_attach(tda827x_attach, fe0->dvb.frontend,
          cdec_conf->tuner_address,
          &dev->i2c_adap, tuner_conf))
   return 0;

  wprintk("no tda827x tuner found at addr: %02x\n",
    cdec_conf->tuner_address);
 }
 return -EINVAL;
}
