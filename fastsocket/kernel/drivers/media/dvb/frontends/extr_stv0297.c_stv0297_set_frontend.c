
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stv0297_state {int base_freq; TYPE_1__* config; } ;
struct TYPE_9__ {int const modulation; int symbol_rate; } ;
struct TYPE_10__ {TYPE_4__ qam; } ;
struct dvb_frontend_parameters {int inversion; int frequency; TYPE_5__ u; } ;
struct TYPE_7__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_8__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct stv0297_state* demodulator_priv; } ;
typedef int fe_spectral_inversion_t ;
struct TYPE_6__ {scalar_t__ invert; } ;


 int EINVAL ;







 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;
 int stv0297_init (struct dvb_frontend*) ;
 int stv0297_readreg (struct stv0297_state*,int) ;
 int stv0297_set_carrieroffset (struct stv0297_state*,int) ;
 int stv0297_set_initialdemodfreq (struct stv0297_state*,int) ;
 int stv0297_set_inversion (struct stv0297_state*,int) ;
 int stv0297_set_qam (struct stv0297_state*,int const) ;
 int stv0297_set_sweeprate (struct stv0297_state*,int,int) ;
 int stv0297_set_symbolrate (struct stv0297_state*,int) ;
 int stv0297_writereg (struct stv0297_state*,int,int) ;
 int stv0297_writereg_mask (struct stv0297_state*,int,int,int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int stv0297_set_frontend(struct dvb_frontend *fe, struct dvb_frontend_parameters *p)
{
 struct stv0297_state *state = fe->demodulator_priv;
 int u_threshold;
 int initial_u;
 int blind_u;
 int delay;
 int sweeprate;
 int carrieroffset;
 unsigned long starttime;
 unsigned long timeout;
 fe_spectral_inversion_t inversion;

 switch (p->u.qam.modulation) {
 case 131:
 case 129:
 case 128:
  delay = 100;
  sweeprate = 1000;
  break;

 case 132:
 case 130:
  delay = 200;
  sweeprate = 500;
  break;

 default:
  return -EINVAL;
 }


 inversion = p->inversion;
 if (state->config->invert)
  inversion = (inversion == 133) ? 134 : 133;
 carrieroffset = -330;
 switch (inversion) {
 case 134:
  break;

 case 133:
  sweeprate = -sweeprate;
  carrieroffset = -carrieroffset;
  break;

 default:
  return -EINVAL;
 }

 stv0297_init(fe);
 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, p);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }


 stv0297_writereg(state, 0x82, 0x0);


 stv0297_set_initialdemodfreq(state, 7250);


 stv0297_writereg_mask(state, 0x43, 0x10, 0x00);
 stv0297_writereg(state, 0x41, 0x00);
 stv0297_writereg_mask(state, 0x42, 0x03, 0x01);
 stv0297_writereg_mask(state, 0x36, 0x60, 0x00);
 stv0297_writereg_mask(state, 0x36, 0x18, 0x00);
 stv0297_writereg_mask(state, 0x71, 0x80, 0x80);
 stv0297_writereg(state, 0x72, 0x00);
 stv0297_writereg(state, 0x73, 0x00);
 stv0297_writereg_mask(state, 0x74, 0x0F, 0x00);
 stv0297_writereg_mask(state, 0x43, 0x08, 0x00);
 stv0297_writereg_mask(state, 0x71, 0x80, 0x00);


 stv0297_writereg_mask(state, 0x5a, 0x20, 0x20);
 stv0297_writereg_mask(state, 0x5b, 0x02, 0x02);
 stv0297_writereg_mask(state, 0x5b, 0x02, 0x00);
 stv0297_writereg_mask(state, 0x5b, 0x01, 0x00);
 stv0297_writereg_mask(state, 0x5a, 0x40, 0x40);


 stv0297_writereg_mask(state, 0x6a, 0x01, 0x00);


 stv0297_writereg_mask(state, 0x81, 0x01, 0x01);
 stv0297_writereg_mask(state, 0x81, 0x01, 0x00);


 stv0297_writereg_mask(state, 0x83, 0x20, 0x20);
 stv0297_writereg_mask(state, 0x83, 0x20, 0x00);


 u_threshold = stv0297_readreg(state, 0x00) & 0xf;
 initial_u = stv0297_readreg(state, 0x01) >> 4;
 blind_u = stv0297_readreg(state, 0x01) & 0xf;
 stv0297_writereg_mask(state, 0x84, 0x01, 0x01);
 stv0297_writereg_mask(state, 0x84, 0x01, 0x00);
 stv0297_writereg_mask(state, 0x00, 0x0f, u_threshold);
 stv0297_writereg_mask(state, 0x01, 0xf0, initial_u << 4);
 stv0297_writereg_mask(state, 0x01, 0x0f, blind_u);


 stv0297_writereg_mask(state, 0x87, 0x80, 0x00);


 stv0297_writereg(state, 0x63, 0x00);
 stv0297_writereg(state, 0x64, 0x00);
 stv0297_writereg(state, 0x65, 0x00);
 stv0297_writereg(state, 0x66, 0x00);
 stv0297_writereg(state, 0x67, 0x00);
 stv0297_writereg(state, 0x68, 0x00);
 stv0297_writereg_mask(state, 0x69, 0x0f, 0x00);


 stv0297_set_qam(state, p->u.qam.modulation);
 stv0297_set_symbolrate(state, p->u.qam.symbol_rate / 1000);
 stv0297_set_sweeprate(state, sweeprate, p->u.qam.symbol_rate / 1000);
 stv0297_set_carrieroffset(state, carrieroffset);
 stv0297_set_inversion(state, inversion);



 if (p->u.qam.modulation == 132 ||
  p->u.qam.modulation == 130)
  stv0297_writereg_mask(state, 0x88, 0x08, 0x00);
 else
  stv0297_writereg_mask(state, 0x88, 0x08, 0x08);

 stv0297_writereg_mask(state, 0x5a, 0x20, 0x00);
 stv0297_writereg_mask(state, 0x6a, 0x01, 0x01);
 stv0297_writereg_mask(state, 0x43, 0x40, 0x40);
 stv0297_writereg_mask(state, 0x5b, 0x30, 0x00);
 stv0297_writereg_mask(state, 0x03, 0x0c, 0x0c);
 stv0297_writereg_mask(state, 0x03, 0x03, 0x03);
 stv0297_writereg_mask(state, 0x43, 0x10, 0x10);


 starttime = jiffies;
 timeout = jiffies + msecs_to_jiffies(2000);
 while (time_before(jiffies, timeout)) {
  msleep(10);
  if (stv0297_readreg(state, 0x43) & 0x08)
   break;
 }
 if (time_after(jiffies, timeout)) {
  goto timeout;
 }
 msleep(20);


 timeout = jiffies + msecs_to_jiffies(500);
 while (time_before(jiffies, timeout)) {
  msleep(10);

  if (stv0297_readreg(state, 0x82) & 0x04) {
   break;
  }
 }
 if (time_after(jiffies, timeout)) {
  goto timeout;
 }


 timeout = jiffies + msecs_to_jiffies(delay);
 while (time_before(jiffies, timeout)) {
  msleep(10);

  if (stv0297_readreg(state, 0x82) & 0x08) {
   break;
  }
 }
 if (time_after(jiffies, timeout)) {
  goto timeout;
 }


 stv0297_writereg_mask(state, 0x6a, 1, 0);
 stv0297_writereg_mask(state, 0x88, 8, 0);


 timeout = jiffies + msecs_to_jiffies(20);
 while (time_before(jiffies, timeout)) {
  msleep(10);

  if (stv0297_readreg(state, 0xDF) & 0x80) {
   break;
  }
 }
 if (time_after(jiffies, timeout)) {
  goto timeout;
 }
 msleep(100);


 if (!(stv0297_readreg(state, 0xDF) & 0x80)) {
  goto timeout;
 }


 stv0297_writereg_mask(state, 0x5a, 0x40, 0x00);
 state->base_freq = p->frequency;
 return 0;

timeout:
 stv0297_writereg_mask(state, 0x6a, 0x01, 0x00);
 return 0;
}
