
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct s5h1432_state {scalar_t__ current_frequency; } ;
struct TYPE_7__ {int bandwidth; } ;
struct TYPE_8__ {TYPE_3__ ofdm; } ;
struct dvb_frontend_parameters {scalar_t__ frequency; TYPE_4__ u; } ;
struct TYPE_5__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_6__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct s5h1432_state* demodulator_priv; } ;





 int IF_FREQ_4_MHZ ;
 int S5H1432_I2C_TOP_ADDR ;
 int msleep (int) ;
 int s5h1432_set_IF (struct dvb_frontend*,int ) ;
 int s5h1432_set_channel_bandwidth (struct dvb_frontend*,int) ;
 int s5h1432_writereg (struct s5h1432_state*,int ,int,int) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;

__attribute__((used)) static int s5h1432_set_frontend(struct dvb_frontend *fe,
    struct dvb_frontend_parameters *p)
{
 u32 dvb_bandwidth = 8;
 struct s5h1432_state *state = fe->demodulator_priv;

 if (p->frequency == state->current_frequency) {


 } else {
  fe->ops.tuner_ops.set_params(fe, p);
  msleep(300);
  s5h1432_set_channel_bandwidth(fe, dvb_bandwidth);
  switch (p->u.ofdm.bandwidth) {
  case 130:
   dvb_bandwidth = 6;
   s5h1432_set_IF(fe, IF_FREQ_4_MHZ);
   break;
  case 129:
   dvb_bandwidth = 7;
   s5h1432_set_IF(fe, IF_FREQ_4_MHZ);
   break;
  case 128:
   dvb_bandwidth = 8;
   s5h1432_set_IF(fe, IF_FREQ_4_MHZ);
   break;
  default:
   return 0;
  }


  msleep(30);
  s5h1432_writereg(state, S5H1432_I2C_TOP_ADDR, 0x09, 0x1a);
  msleep(30);
  s5h1432_writereg(state, S5H1432_I2C_TOP_ADDR, 0x09, 0x1b);

  s5h1432_set_channel_bandwidth(fe, dvb_bandwidth);
  switch (p->u.ofdm.bandwidth) {
  case 130:
   dvb_bandwidth = 6;
   s5h1432_set_IF(fe, IF_FREQ_4_MHZ);
   break;
  case 129:
   dvb_bandwidth = 7;
   s5h1432_set_IF(fe, IF_FREQ_4_MHZ);
   break;
  case 128:
   dvb_bandwidth = 8;
   s5h1432_set_IF(fe, IF_FREQ_4_MHZ);
   break;
  default:
   return 0;
  }


  msleep(30);
  s5h1432_writereg(state, S5H1432_I2C_TOP_ADDR, 0x09, 0x1a);
  msleep(30);
  s5h1432_writereg(state, S5H1432_I2C_TOP_ADDR, 0x09, 0x1b);

 }

 state->current_frequency = p->frequency;

 return 0;
}
