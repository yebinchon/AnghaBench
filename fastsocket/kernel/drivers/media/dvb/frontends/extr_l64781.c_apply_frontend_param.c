
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct l64781_state {int dummy; } ;
struct dvb_ofdm_parameters {size_t bandwidth; scalar_t__ code_rate_HP; int hierarchy_information; scalar_t__ code_rate_LP; size_t constellation; int transmission_mode; size_t guard_interval; } ;
struct TYPE_4__ {struct dvb_ofdm_parameters ofdm; } ;
struct dvb_frontend_parameters {scalar_t__ inversion; TYPE_1__ u; } ;
struct TYPE_5__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_6__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct l64781_state* demodulator_priv; } ;


 int BANDWIDTH_8_MHZ ;
 int EINVAL ;
 scalar_t__ FEC_1_2 ;
 scalar_t__ FEC_2_3 ;
 scalar_t__ FEC_3_4 ;
 scalar_t__ FEC_5_6 ;
 scalar_t__ FEC_7_8 ;
 size_t GUARD_INTERVAL_1_32 ;
 size_t GUARD_INTERVAL_1_4 ;
 int HIERARCHY_4 ;
 int HIERARCHY_NONE ;
 scalar_t__ INVERSION_OFF ;
 scalar_t__ INVERSION_ON ;
 size_t QAM_16 ;
 size_t QAM_64 ;
 size_t QPSK ;
 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_8K ;
 int apply_tps (struct l64781_state*) ;
 int l64781_readreg (struct l64781_state*,int) ;
 int l64781_writereg (struct l64781_state*,int,int) ;
 int reset_afc (struct l64781_state*) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int apply_frontend_param (struct dvb_frontend* fe, struct dvb_frontend_parameters *param)
{
 struct l64781_state* state = fe->demodulator_priv;

 static const u8 fec_tab[] = { 7, 0, 1, 2, 9, 3, 10, 4 };

 static const u8 qam_tab [] = { 2, 4, 0, 6 };
 static const u8 bw_tab [] = { 8, 7, 6 };
 static const u8 guard_tab [] = { 1, 2, 4, 8 };

 static const u32 ppm = 8000;
 struct dvb_ofdm_parameters *p = &param->u.ofdm;
 u32 ddfs_offset_fixed;


 u32 init_freq;
 u32 spi_bias;
 u8 val0x04;
 u8 val0x05;
 u8 val0x06;
 int bw = p->bandwidth - BANDWIDTH_8_MHZ;

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, param);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }

 if (param->inversion != INVERSION_ON &&
     param->inversion != INVERSION_OFF)
  return -EINVAL;

 if (bw < 0 || bw > 2)
  return -EINVAL;

 if (p->code_rate_HP != FEC_1_2 && p->code_rate_HP != FEC_2_3 &&
     p->code_rate_HP != FEC_3_4 && p->code_rate_HP != FEC_5_6 &&
     p->code_rate_HP != FEC_7_8)
  return -EINVAL;

 if (p->hierarchy_information != HIERARCHY_NONE &&
     (p->code_rate_LP != FEC_1_2 && p->code_rate_LP != FEC_2_3 &&
      p->code_rate_LP != FEC_3_4 && p->code_rate_LP != FEC_5_6 &&
      p->code_rate_LP != FEC_7_8))
  return -EINVAL;

 if (p->constellation != QPSK && p->constellation != QAM_16 &&
     p->constellation != QAM_64)
  return -EINVAL;

 if (p->transmission_mode != TRANSMISSION_MODE_2K &&
     p->transmission_mode != TRANSMISSION_MODE_8K)
  return -EINVAL;

 if (p->guard_interval < GUARD_INTERVAL_1_32 ||
     p->guard_interval > GUARD_INTERVAL_1_4)
  return -EINVAL;

 if (p->hierarchy_information < HIERARCHY_NONE ||
     p->hierarchy_information > HIERARCHY_4)
  return -EINVAL;

 ddfs_offset_fixed = 0x4000-(ppm<<16)/bw_tab[p->bandwidth]/1000000;


 init_freq = (((8UL<<25) + (8UL<<19) / 25*ppm / (15625/25)) /
   bw_tab[p->bandwidth] & 0xFFFFFF);



 spi_bias = 378 * (1 << 10);
 spi_bias *= 16;
 spi_bias *= bw_tab[p->bandwidth];
 spi_bias *= qam_tab[p->constellation];
 spi_bias /= p->code_rate_HP + 1;
 spi_bias /= (guard_tab[p->guard_interval] + 32);
 spi_bias *= 1000;
 spi_bias /= 1000 + ppm/1000;
 spi_bias *= p->code_rate_HP;

 val0x04 = (p->transmission_mode << 2) | p->guard_interval;
 val0x05 = fec_tab[p->code_rate_HP];

 if (p->hierarchy_information != HIERARCHY_NONE)
  val0x05 |= (p->code_rate_LP - FEC_1_2) << 3;

 val0x06 = (p->hierarchy_information << 2) | p->constellation;

 l64781_writereg (state, 0x04, val0x04);
 l64781_writereg (state, 0x05, val0x05);
 l64781_writereg (state, 0x06, val0x06);

 reset_afc (state);


 l64781_writereg (state, 0x15,
    p->transmission_mode == TRANSMISSION_MODE_2K ? 1 : 3);
 l64781_writereg (state, 0x16, init_freq & 0xff);
 l64781_writereg (state, 0x17, (init_freq >> 8) & 0xff);
 l64781_writereg (state, 0x18, (init_freq >> 16) & 0xff);

 l64781_writereg (state, 0x1b, spi_bias & 0xff);
 l64781_writereg (state, 0x1c, (spi_bias >> 8) & 0xff);
 l64781_writereg (state, 0x1d, ((spi_bias >> 16) & 0x7f) |
  (param->inversion == INVERSION_ON ? 0x80 : 0x00));

 l64781_writereg (state, 0x22, ddfs_offset_fixed & 0xff);
 l64781_writereg (state, 0x23, (ddfs_offset_fixed >> 8) & 0x3f);

 l64781_readreg (state, 0x00);
 l64781_readreg (state, 0x01);

 apply_tps (state);

 return 0;
}
