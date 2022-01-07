
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_ofdm_parameters {int bandwidth; int transmission_mode; int guard_interval; int constellation; int hierarchy_information; int code_rate_HP; int code_rate_LP; } ;
struct TYPE_4__ {struct dvb_ofdm_parameters ofdm; } ;
struct dvb_frontend_parameters {int inversion; TYPE_1__ u; } ;
struct TYPE_5__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_6__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;
typedef int fe_code_rate_t ;






 int DIB3000MB_ISI_ACTIVATE ;
 int DIB3000MB_ISI_INHIBIT ;
 int DIB3000MB_LOCK1_SEARCH_4 ;
 int DIB3000MB_MOBILE_ALGO_OFF ;
 int DIB3000MB_MOBILE_MODE_OFF ;
 int DIB3000MB_MOBILE_MODE_QAM_OFF ;
 int DIB3000MB_REG_AS_IRQ_PENDING ;
 int DIB3000MB_REG_DDS_INV ;
 int DIB3000MB_REG_FFT ;
 int DIB3000MB_REG_GUARD_TIME ;
 int DIB3000MB_REG_ISI ;
 int DIB3000MB_REG_LOCK1_MASK ;
 int DIB3000MB_REG_LOCK2_VALUE ;
 int DIB3000MB_REG_MOBILE_ALGO ;
 int DIB3000MB_REG_MOBILE_MODE ;
 int DIB3000MB_REG_MOBILE_MODE_QAM ;
 int DIB3000MB_REG_QAM ;
 int DIB3000MB_REG_RESTART ;
 int DIB3000MB_REG_SEQ ;
 int DIB3000MB_REG_SYNC_IMPROVEMENT ;
 int DIB3000MB_REG_UNK_121 ;
 int DIB3000MB_REG_VIT_ALPHA ;
 int DIB3000MB_REG_VIT_CODE_RATE ;
 int DIB3000MB_REG_VIT_HP ;
 int DIB3000MB_REG_VIT_HRCH ;
 int DIB3000MB_RESTART_AGC ;
 int DIB3000MB_RESTART_AUTO_SEARCH ;
 int DIB3000MB_RESTART_CTRL ;
 int DIB3000MB_RESTART_OFF ;
 int DIB3000MB_SYNC_IMPROVE_2K_1_8 ;
 int DIB3000MB_SYNC_IMPROVE_DEFAULT ;
 int DIB3000MB_UNK_121_2K ;
 int DIB3000MB_UNK_121_DEFAULT ;
 int DIB3000_ALPHA_1 ;
 int DIB3000_ALPHA_2 ;
 int DIB3000_ALPHA_4 ;
 int DIB3000_CONSTELLATION_16QAM ;
 int DIB3000_CONSTELLATION_64QAM ;
 int DIB3000_CONSTELLATION_QPSK ;
 int DIB3000_DDS_INVERSION_OFF ;
 int DIB3000_DDS_INVERSION_ON ;
 int DIB3000_FEC_1_2 ;
 int DIB3000_FEC_2_3 ;
 int DIB3000_FEC_3_4 ;
 int DIB3000_FEC_5_6 ;
 int DIB3000_FEC_7_8 ;
 int DIB3000_GUARD_TIME_1_16 ;
 int DIB3000_GUARD_TIME_1_32 ;
 int DIB3000_GUARD_TIME_1_4 ;
 int DIB3000_GUARD_TIME_1_8 ;
 int DIB3000_HRCH_OFF ;
 int DIB3000_HRCH_ON ;
 int DIB3000_SELECT_HP ;
 int DIB3000_SELECT_LP ;
 int DIB3000_TRANSMISSION_MODE_2K ;
 int DIB3000_TRANSMISSION_MODE_8K ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int deb_setf (char*,...) ;
 int dib3000_search_status (int ,int ) ;
 int*** dib3000_seq ;
 int dib3000mb_agc_bandwidth_high ;
 int dib3000mb_agc_bandwidth_low ;
 int dib3000mb_bandwidth_6mhz ;
 int dib3000mb_bandwidth_7mhz ;
 int dib3000mb_bandwidth_8mhz ;
 scalar_t__ dib3000mb_get_frontend (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int dib3000mb_reg_agc_bandwidth ;
 int dib3000mb_reg_bandwidth ;
 int dib3000mb_reg_timing_freq ;
 int * dib3000mb_timing_freq ;
 int err (char*) ;
 int msleep (int) ;
 int rd (int ) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;
 int wr (int ,int) ;
 int wr_foreach (int ,int ) ;

__attribute__((used)) static int dib3000mb_set_frontend(struct dvb_frontend* fe,
      struct dvb_frontend_parameters *fep, int tuner)
{
 struct dib3000_state* state = fe->demodulator_priv;
 struct dvb_ofdm_parameters *ofdm = &fep->u.ofdm;
 fe_code_rate_t fe_cr = 148;
 int search_state, seq;

 if (tuner && fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, fep);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);

  deb_setf("bandwidth: ");
  switch (ofdm->bandwidth) {
   case 156:
    deb_setf("8 MHz\n");
    wr_foreach(dib3000mb_reg_timing_freq, dib3000mb_timing_freq[2]);
    wr_foreach(dib3000mb_reg_bandwidth, dib3000mb_bandwidth_8mhz);
    break;
   case 157:
    deb_setf("7 MHz\n");
    wr_foreach(dib3000mb_reg_timing_freq, dib3000mb_timing_freq[1]);
    wr_foreach(dib3000mb_reg_bandwidth, dib3000mb_bandwidth_7mhz);
    break;
   case 158:
    deb_setf("6 MHz\n");
    wr_foreach(dib3000mb_reg_timing_freq, dib3000mb_timing_freq[0]);
    wr_foreach(dib3000mb_reg_bandwidth, dib3000mb_bandwidth_6mhz);
    break;
   case 155:
    return -EOPNOTSUPP;
   default:
    err("unknown bandwidth value.");
    return -EINVAL;
  }
 }
 wr(DIB3000MB_REG_LOCK1_MASK, DIB3000MB_LOCK1_SEARCH_4);

 deb_setf("transmission mode: ");
 switch (ofdm->transmission_mode) {
  case 130:
   deb_setf("2k\n");
   wr(DIB3000MB_REG_FFT, DIB3000_TRANSMISSION_MODE_2K);
   break;
  case 129:
   deb_setf("8k\n");
   wr(DIB3000MB_REG_FFT, DIB3000_TRANSMISSION_MODE_8K);
   break;
  case 128:
   deb_setf("auto\n");
   break;
  default:
   return -EINVAL;
 }

 deb_setf("guard: ");
 switch (ofdm->guard_interval) {
  case 146:
   deb_setf("1_32\n");
   wr(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_32);
   break;
  case 147:
   deb_setf("1_16\n");
   wr(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_16);
   break;
  case 144:
   deb_setf("1_8\n");
   wr(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_8);
   break;
  case 145:
   deb_setf("1_4\n");
   wr(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_4);
   break;
  case 143:
   deb_setf("auto\n");
   break;
  default:
   return -EINVAL;
 }

 deb_setf("inversion: ");
 switch (fep->inversion) {
  case 136:
   deb_setf("off\n");
   wr(DIB3000MB_REG_DDS_INV, DIB3000_DDS_INVERSION_OFF);
   break;
  case 137:
   deb_setf("auto ");
   break;
  case 135:
   deb_setf("on\n");
   wr(DIB3000MB_REG_DDS_INV, DIB3000_DDS_INVERSION_ON);
   break;
  default:
   return -EINVAL;
 }

 deb_setf("constellation: ");
 switch (ofdm->constellation) {
  case 131:
   deb_setf("qpsk\n");
   wr(DIB3000MB_REG_QAM, DIB3000_CONSTELLATION_QPSK);
   break;
  case 134:
   deb_setf("qam16\n");
   wr(DIB3000MB_REG_QAM, DIB3000_CONSTELLATION_16QAM);
   break;
  case 133:
   deb_setf("qam64\n");
   wr(DIB3000MB_REG_QAM, DIB3000_CONSTELLATION_64QAM);
   break;
  case 132:
   break;
  default:
   return -EINVAL;
 }
 deb_setf("hierarchy: ");
 switch (ofdm->hierarchy_information) {
  case 138:
   deb_setf("none ");

  case 142:
   deb_setf("alpha=1\n");
   wr(DIB3000MB_REG_VIT_ALPHA, DIB3000_ALPHA_1);
   break;
  case 141:
   deb_setf("alpha=2\n");
   wr(DIB3000MB_REG_VIT_ALPHA, DIB3000_ALPHA_2);
   break;
  case 140:
   deb_setf("alpha=4\n");
   wr(DIB3000MB_REG_VIT_ALPHA, DIB3000_ALPHA_4);
   break;
  case 139:
   deb_setf("alpha=auto\n");
   break;
  default:
   return -EINVAL;
 }

 deb_setf("hierarchy: ");
 if (ofdm->hierarchy_information == 138) {
  deb_setf("none\n");
  wr(DIB3000MB_REG_VIT_HRCH, DIB3000_HRCH_OFF);
  wr(DIB3000MB_REG_VIT_HP, DIB3000_SELECT_HP);
  fe_cr = ofdm->code_rate_HP;
 } else if (ofdm->hierarchy_information != 139) {
  deb_setf("on\n");
  wr(DIB3000MB_REG_VIT_HRCH, DIB3000_HRCH_ON);
  wr(DIB3000MB_REG_VIT_HP, DIB3000_SELECT_LP);
  fe_cr = ofdm->code_rate_LP;
 }
 deb_setf("fec: ");
 switch (fe_cr) {
  case 154:
   deb_setf("1_2\n");
   wr(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_1_2);
   break;
  case 153:
   deb_setf("2_3\n");
   wr(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_2_3);
   break;
  case 152:
   deb_setf("3_4\n");
   wr(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_3_4);
   break;
  case 151:
   deb_setf("5_6\n");
   wr(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_5_6);
   break;
  case 150:
   deb_setf("7_8\n");
   wr(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_7_8);
   break;
  case 148:
   deb_setf("none ");
   break;
  case 149:
   deb_setf("auto\n");
   break;
  default:
   return -EINVAL;
 }

 seq = dib3000_seq
  [ofdm->transmission_mode == 128]
  [ofdm->guard_interval == 143]
  [fep->inversion == 137];

 deb_setf("seq? %d\n", seq);

 wr(DIB3000MB_REG_SEQ, seq);

 wr(DIB3000MB_REG_ISI, seq ? DIB3000MB_ISI_INHIBIT : DIB3000MB_ISI_ACTIVATE);

 if (ofdm->transmission_mode == 130) {
  if (ofdm->guard_interval == 144) {
   wr(DIB3000MB_REG_SYNC_IMPROVEMENT, DIB3000MB_SYNC_IMPROVE_2K_1_8);
  } else {
   wr(DIB3000MB_REG_SYNC_IMPROVEMENT, DIB3000MB_SYNC_IMPROVE_DEFAULT);
  }

  wr(DIB3000MB_REG_UNK_121, DIB3000MB_UNK_121_2K);
 } else {
  wr(DIB3000MB_REG_UNK_121, DIB3000MB_UNK_121_DEFAULT);
 }

 wr(DIB3000MB_REG_MOBILE_ALGO, DIB3000MB_MOBILE_ALGO_OFF);
 wr(DIB3000MB_REG_MOBILE_MODE_QAM, DIB3000MB_MOBILE_MODE_QAM_OFF);
 wr(DIB3000MB_REG_MOBILE_MODE, DIB3000MB_MOBILE_MODE_OFF);

 wr_foreach(dib3000mb_reg_agc_bandwidth, dib3000mb_agc_bandwidth_high);

 wr(DIB3000MB_REG_ISI, DIB3000MB_ISI_ACTIVATE);

 wr(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_AGC + DIB3000MB_RESTART_CTRL);
 wr(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_OFF);


 msleep(70);

 wr_foreach(dib3000mb_reg_agc_bandwidth, dib3000mb_agc_bandwidth_low);


 if (ofdm->constellation == 132 ||
  ofdm->hierarchy_information == 139 ||
  fe_cr == 149 ||
  fep->inversion == 137) {
  int as_count=0;

  deb_setf("autosearch enabled.\n");

  wr(DIB3000MB_REG_ISI, DIB3000MB_ISI_INHIBIT);

  wr(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_AUTO_SEARCH);
  wr(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_OFF);

  while ((search_state =
    dib3000_search_status(
     rd(DIB3000MB_REG_AS_IRQ_PENDING),
     rd(DIB3000MB_REG_LOCK2_VALUE))) < 0 && as_count++ < 100)
   msleep(1);

  deb_setf("search_state after autosearch %d after %d checks\n",search_state,as_count);

  if (search_state == 1) {
   struct dvb_frontend_parameters feps;
   if (dib3000mb_get_frontend(fe, &feps) == 0) {
    deb_setf("reading tuning data from frontend succeeded.\n");
    return dib3000mb_set_frontend(fe, &feps, 0);
   }
  }

 } else {
  wr(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_CTRL);
  wr(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_OFF);
 }

 return 0;
}
