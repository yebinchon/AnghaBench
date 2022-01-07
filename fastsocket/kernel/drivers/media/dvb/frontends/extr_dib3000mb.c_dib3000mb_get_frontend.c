
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct dvb_ofdm_parameters {int transmission_mode; int guard_interval; void* hierarchy_information; void* code_rate_LP; void* code_rate_HP; int constellation; } ;
struct TYPE_2__ {struct dvb_ofdm_parameters ofdm; } ;
struct dvb_frontend_parameters {int inversion; TYPE_1__ u; } ;
struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;
typedef void* fe_code_rate_t ;


 int DIB3000MB_REG_DDS_FREQ_LSB ;
 int DIB3000MB_REG_DDS_FREQ_MSB ;
 int DIB3000MB_REG_DDS_VALUE_LSB ;
 int DIB3000MB_REG_DDS_VALUE_MSB ;
 int DIB3000MB_REG_TPS_CODE_RATE_HP ;
 int DIB3000MB_REG_TPS_CODE_RATE_LP ;
 int DIB3000MB_REG_TPS_FFT ;
 int DIB3000MB_REG_TPS_GUARD_TIME ;
 int DIB3000MB_REG_TPS_HRCH ;
 int DIB3000MB_REG_TPS_LOCK ;
 int DIB3000MB_REG_TPS_QAM ;
 int DIB3000MB_REG_TPS_VIT_ALPHA ;
 void* FEC_1_2 ;
 void* FEC_2_3 ;
 void* FEC_3_4 ;
 void* FEC_4_5 ;
 void* FEC_7_8 ;
 void* FEC_NONE ;
 int GUARD_INTERVAL_1_16 ;
 int GUARD_INTERVAL_1_32 ;
 int GUARD_INTERVAL_1_4 ;
 int GUARD_INTERVAL_1_8 ;
 void* HIERARCHY_1 ;
 void* HIERARCHY_2 ;
 void* HIERARCHY_4 ;
 void* HIERARCHY_NONE ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 int QAM_16 ;
 int QAM_64 ;
 int QPSK ;
 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_8K ;
 int deb_getf (char*,...) ;
 int err (char*,int) ;
 int rd (int ) ;

__attribute__((used)) static int dib3000mb_get_frontend(struct dvb_frontend* fe,
      struct dvb_frontend_parameters *fep)
{
 struct dib3000_state* state = fe->demodulator_priv;
 struct dvb_ofdm_parameters *ofdm = &fep->u.ofdm;
 fe_code_rate_t *cr;
 u16 tps_val;
 int inv_test1,inv_test2;
 u32 dds_val, threshold = 0x800000;

 if (!rd(DIB3000MB_REG_TPS_LOCK))
  return 0;

 dds_val = ((rd(DIB3000MB_REG_DDS_VALUE_MSB) & 0xff) << 16) + rd(DIB3000MB_REG_DDS_VALUE_LSB);
 deb_getf("DDS_VAL: %x %x %x",dds_val, rd(DIB3000MB_REG_DDS_VALUE_MSB), rd(DIB3000MB_REG_DDS_VALUE_LSB));
 if (dds_val < threshold)
  inv_test1 = 0;
 else if (dds_val == threshold)
  inv_test1 = 1;
 else
  inv_test1 = 2;

 dds_val = ((rd(DIB3000MB_REG_DDS_FREQ_MSB) & 0xff) << 16) + rd(DIB3000MB_REG_DDS_FREQ_LSB);
 deb_getf("DDS_FREQ: %x %x %x",dds_val, rd(DIB3000MB_REG_DDS_FREQ_MSB), rd(DIB3000MB_REG_DDS_FREQ_LSB));
 if (dds_val < threshold)
  inv_test2 = 0;
 else if (dds_val == threshold)
  inv_test2 = 1;
 else
  inv_test2 = 2;

 fep->inversion =
  ((inv_test2 == 2) && (inv_test1==1 || inv_test1==0)) ||
  ((inv_test2 == 0) && (inv_test1==1 || inv_test1==2)) ?
  INVERSION_ON : INVERSION_OFF;

 deb_getf("inversion %d %d, %d\n", inv_test2, inv_test1, fep->inversion);

 switch ((tps_val = rd(DIB3000MB_REG_TPS_QAM))) {
  case 139:
   deb_getf("QPSK ");
   ofdm->constellation = QPSK;
   break;
  case 141:
   deb_getf("QAM16 ");
   ofdm->constellation = QAM_16;
   break;
  case 140:
   deb_getf("QAM64 ");
   ofdm->constellation = QAM_64;
   break;
  default:
   err("Unexpected constellation returned by TPS (%d)", tps_val);
   break;
 }
 deb_getf("TPS: %d\n", tps_val);

 if (rd(DIB3000MB_REG_TPS_HRCH)) {
  deb_getf("HRCH ON\n");
  cr = &ofdm->code_rate_LP;
  ofdm->code_rate_HP = FEC_NONE;
  switch ((tps_val = rd(DIB3000MB_REG_TPS_VIT_ALPHA))) {
   case 145:
    deb_getf("HIERARCHY_NONE ");
    ofdm->hierarchy_information = HIERARCHY_NONE;
    break;
   case 144:
    deb_getf("HIERARCHY_1 ");
    ofdm->hierarchy_information = HIERARCHY_1;
    break;
   case 143:
    deb_getf("HIERARCHY_2 ");
    ofdm->hierarchy_information = HIERARCHY_2;
    break;
   case 142:
    deb_getf("HIERARCHY_4 ");
    ofdm->hierarchy_information = HIERARCHY_4;
    break;
   default:
    err("Unexpected ALPHA value returned by TPS (%d)", tps_val);
    break;
  }
  deb_getf("TPS: %d\n", tps_val);

  tps_val = rd(DIB3000MB_REG_TPS_CODE_RATE_LP);
 } else {
  deb_getf("HRCH OFF\n");
  cr = &ofdm->code_rate_HP;
  ofdm->code_rate_LP = FEC_NONE;
  ofdm->hierarchy_information = HIERARCHY_NONE;

  tps_val = rd(DIB3000MB_REG_TPS_CODE_RATE_HP);
 }

 switch (tps_val) {
  case 138:
   deb_getf("FEC_1_2 ");
   *cr = FEC_1_2;
   break;
  case 137:
   deb_getf("FEC_2_3 ");
   *cr = FEC_2_3;
   break;
  case 136:
   deb_getf("FEC_3_4 ");
   *cr = FEC_3_4;
   break;
  case 135:
   deb_getf("FEC_5_6 ");
   *cr = FEC_4_5;
   break;
  case 134:
   deb_getf("FEC_7_8 ");
   *cr = FEC_7_8;
   break;
  default:
   err("Unexpected FEC returned by TPS (%d)", tps_val);
   break;
 }
 deb_getf("TPS: %d\n",tps_val);

 switch ((tps_val = rd(DIB3000MB_REG_TPS_GUARD_TIME))) {
  case 132:
   deb_getf("GUARD_INTERVAL_1_32 ");
   ofdm->guard_interval = GUARD_INTERVAL_1_32;
   break;
  case 133:
   deb_getf("GUARD_INTERVAL_1_16 ");
   ofdm->guard_interval = GUARD_INTERVAL_1_16;
   break;
  case 130:
   deb_getf("GUARD_INTERVAL_1_8 ");
   ofdm->guard_interval = GUARD_INTERVAL_1_8;
   break;
  case 131:
   deb_getf("GUARD_INTERVAL_1_4 ");
   ofdm->guard_interval = GUARD_INTERVAL_1_4;
   break;
  default:
   err("Unexpected Guard Time returned by TPS (%d)", tps_val);
   break;
 }
 deb_getf("TPS: %d\n", tps_val);

 switch ((tps_val = rd(DIB3000MB_REG_TPS_FFT))) {
  case 129:
   deb_getf("TRANSMISSION_MODE_2K ");
   ofdm->transmission_mode = TRANSMISSION_MODE_2K;
   break;
  case 128:
   deb_getf("TRANSMISSION_MODE_8K ");
   ofdm->transmission_mode = TRANSMISSION_MODE_8K;
   break;
  default:
   err("unexpected transmission mode return by TPS (%d)", tps_val);
   break;
 }
 deb_getf("TPS: %d\n", tps_val);

 return 0;
}
