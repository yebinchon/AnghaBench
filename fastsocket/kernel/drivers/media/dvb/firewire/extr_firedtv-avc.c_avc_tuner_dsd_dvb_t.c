
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firedtv {scalar_t__ avc_data; } ;
struct dvb_ofdm_parameters {int bandwidth; int constellation; int hierarchy_information; int code_rate_HP; int code_rate_LP; int guard_interval; int transmission_mode; } ;
struct TYPE_2__ {struct dvb_ofdm_parameters ofdm; } ;
struct dvb_frontend_parameters {int frequency; TYPE_1__ u; } ;
struct avc_command_frame {int* operand; int opcode; } ;


 int AVC_OPCODE_DSD ;
 int FEC_AUTO ;
 int QAM_AUTO ;




 int add_pid_filter (struct firedtv*,int*) ;

__attribute__((used)) static int avc_tuner_dsd_dvb_t(struct firedtv *fdtv,
          struct dvb_frontend_parameters *params)
{
 struct dvb_ofdm_parameters *ofdm = &params->u.ofdm;
 struct avc_command_frame *c = (void *)fdtv->avc_data;

 c->opcode = AVC_OPCODE_DSD;

 c->operand[0] = 0;
 c->operand[1] = 0xd2;
 c->operand[2] = 0x20;
 c->operand[3] = 0x00;
 c->operand[4] = 0x0c;


 c->operand[5] =
       0 << 7
     | 1 << 6
     | (ofdm->bandwidth != 149 ? 1 << 5 : 0)
     | (ofdm->constellation != QAM_AUTO ? 1 << 4 : 0)
     | (ofdm->hierarchy_information != 135 ? 1 << 3 : 0)
     | (ofdm->code_rate_HP != FEC_AUTO ? 1 << 2 : 0)
     | (ofdm->code_rate_LP != FEC_AUTO ? 1 << 1 : 0)
     | (ofdm->guard_interval != 139 ? 1 << 0 : 0);


 c->operand[6] =
       0 << 7
     | (ofdm->transmission_mode != 128 ? 1 << 6 : 0)
     | 0 << 5
     | 0 << 0 ;

 c->operand[7] = 0x0;
 c->operand[8] = (params->frequency / 10) >> 24;
 c->operand[9] = ((params->frequency / 10) >> 16) & 0xff;
 c->operand[10] = ((params->frequency / 10) >> 8) & 0xff;
 c->operand[11] = (params->frequency / 10) & 0xff;

 switch (ofdm->bandwidth) {
 case 151: c->operand[12] = 0x20; break;
 case 150:
 case 152:
 case 149:
 default: c->operand[12] = 0x00;
 }

 switch (ofdm->constellation) {
 case 133: c->operand[13] = 1 << 6; break;
 case 132: c->operand[13] = 2 << 6; break;
 case 131:
 default: c->operand[13] = 0x00;
 }

 switch (ofdm->hierarchy_information) {
 case 138: c->operand[13] |= 1 << 3; break;
 case 137: c->operand[13] |= 2 << 3; break;
 case 136: c->operand[13] |= 3 << 3; break;
 case 135:
 case 134:
 default: break;
 }

 switch (ofdm->code_rate_HP) {
 case 147: c->operand[13] |= 1; break;
 case 146: c->operand[13] |= 2; break;
 case 145: c->operand[13] |= 3; break;
 case 144: c->operand[13] |= 4; break;
 case 148:
 default: break;
 }

 switch (ofdm->code_rate_LP) {
 case 147: c->operand[14] = 1 << 5; break;
 case 146: c->operand[14] = 2 << 5; break;
 case 145: c->operand[14] = 3 << 5; break;
 case 144: c->operand[14] = 4 << 5; break;
 case 148:
 default: c->operand[14] = 0x00; break;
 }

 switch (ofdm->guard_interval) {
 case 143: c->operand[14] |= 1 << 3; break;
 case 140: c->operand[14] |= 2 << 3; break;
 case 141: c->operand[14] |= 3 << 3; break;
 case 142:
 case 139:
 default: break;
 }

 switch (ofdm->transmission_mode) {
 case 129: c->operand[14] |= 1 << 1; break;
 case 130:
 case 128:
 default: break;
 }

 c->operand[15] = 0x00;
 c->operand[16] = 0x00;

 return 17 + add_pid_filter(fdtv, &c->operand[17]);
}
