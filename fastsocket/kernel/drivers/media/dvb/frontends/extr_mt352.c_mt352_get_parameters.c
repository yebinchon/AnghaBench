
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mt352_state {int dummy; } ;
struct dvb_ofdm_parameters {int code_rate_HP; int code_rate_LP; int bandwidth; int hierarchy_information; int guard_interval; int transmission_mode; int constellation; } ;
struct TYPE_2__ {struct dvb_ofdm_parameters ofdm; } ;
struct dvb_frontend_parameters {int frequency; int inversion; TYPE_1__ u; } ;
struct dvb_frontend {struct mt352_state* demodulator_priv; } ;


 int BANDWIDTH_6_MHZ ;
 int BANDWIDTH_7_MHZ ;
 int BANDWIDTH_8_MHZ ;
 int CHAN_START_0 ;
 int CHAN_START_1 ;
 int EINVAL ;






 int GUARD_INTERVAL_1_16 ;
 int GUARD_INTERVAL_1_32 ;
 int GUARD_INTERVAL_1_4 ;
 int GUARD_INTERVAL_1_8 ;
 int GUARD_INTERVAL_AUTO ;
 int HIERARCHY_1 ;
 int HIERARCHY_2 ;
 int HIERARCHY_4 ;
 int HIERARCHY_AUTO ;
 int HIERARCHY_NONE ;
 int IF_FREQUENCYx6 ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 int QAM_16 ;
 int QAM_64 ;
 int QAM_AUTO ;
 int QPSK ;
 int STATUS_2 ;
 int TPS_RECEIVED_0 ;
 int TPS_RECEIVED_1 ;
 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_8K ;
 int TRL_NOMINAL_RATE_1 ;
 int mt352_read_register (struct mt352_state*,int) ;

__attribute__((used)) static int mt352_get_parameters(struct dvb_frontend* fe,
    struct dvb_frontend_parameters *param)
{
 struct mt352_state* state = fe->demodulator_priv;
 u16 tps;
 u16 div;
 u8 trl;
 struct dvb_ofdm_parameters *op = &param->u.ofdm;
 static const u8 tps_fec_to_api[8] =
 {
  133,
  132,
  131,
  130,
  129,
  128,
  128,
  128
 };

 if ( (mt352_read_register(state,0x00) & 0xC0) != 0xC0 )
  return -EINVAL;




 tps = (mt352_read_register(state, TPS_RECEIVED_1) << 8) | mt352_read_register(state, TPS_RECEIVED_0);
 div = (mt352_read_register(state, CHAN_START_1) << 8) | mt352_read_register(state, CHAN_START_0);
 trl = mt352_read_register(state, TRL_NOMINAL_RATE_1);

 op->code_rate_HP = tps_fec_to_api[(tps >> 7) & 7];
 op->code_rate_LP = tps_fec_to_api[(tps >> 4) & 7];

 switch ( (tps >> 13) & 3)
 {
  case 0:
   op->constellation = QPSK;
   break;
  case 1:
   op->constellation = QAM_16;
   break;
  case 2:
   op->constellation = QAM_64;
   break;
  default:
   op->constellation = QAM_AUTO;
   break;
 }

 op->transmission_mode = (tps & 0x01) ? TRANSMISSION_MODE_8K : TRANSMISSION_MODE_2K;

 switch ( (tps >> 2) & 3)
 {
  case 0:
   op->guard_interval = GUARD_INTERVAL_1_32;
   break;
  case 1:
   op->guard_interval = GUARD_INTERVAL_1_16;
   break;
  case 2:
   op->guard_interval = GUARD_INTERVAL_1_8;
   break;
  case 3:
   op->guard_interval = GUARD_INTERVAL_1_4;
   break;
  default:
   op->guard_interval = GUARD_INTERVAL_AUTO;
   break;
 }

 switch ( (tps >> 10) & 7)
 {
  case 0:
   op->hierarchy_information = HIERARCHY_NONE;
   break;
  case 1:
   op->hierarchy_information = HIERARCHY_1;
   break;
  case 2:
   op->hierarchy_information = HIERARCHY_2;
   break;
  case 3:
   op->hierarchy_information = HIERARCHY_4;
   break;
  default:
   op->hierarchy_information = HIERARCHY_AUTO;
   break;
 }

 param->frequency = ( 500 * (div - IF_FREQUENCYx6) ) / 3 * 1000;

 if (trl == 0x72)
  op->bandwidth = BANDWIDTH_8_MHZ;
 else if (trl == 0x64)
  op->bandwidth = BANDWIDTH_7_MHZ;
 else
  op->bandwidth = BANDWIDTH_6_MHZ;


 if (mt352_read_register(state, STATUS_2) & 0x02)
  param->inversion = INVERSION_OFF;
 else
  param->inversion = INVERSION_ON;

 return 0;
}
