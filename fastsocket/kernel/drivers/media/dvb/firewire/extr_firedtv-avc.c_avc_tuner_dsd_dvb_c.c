
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct firedtv {scalar_t__ avc_data; } ;
struct TYPE_5__ {scalar_t__ fec_inner; int modulation; } ;
struct TYPE_4__ {int symbol_rate; int fec_inner; } ;
struct TYPE_6__ {TYPE_2__ qam; TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {int frequency; TYPE_3__ u; } ;
struct avc_command_frame {int* operand; int opcode; } ;


 int AVC_OPCODE_DSD ;
 int add_pid_filter (struct firedtv*,int*) ;

__attribute__((used)) static int avc_tuner_dsd_dvb_c(struct firedtv *fdtv,
          struct dvb_frontend_parameters *params)
{
 struct avc_command_frame *c = (void *)fdtv->avc_data;

 c->opcode = AVC_OPCODE_DSD;

 c->operand[0] = 0;
 c->operand[1] = 0xd2;
 c->operand[2] = 0x20;
 c->operand[3] = 0x00;
 c->operand[4] = 0x11;


 c->operand[5] = 0 << 7
   | 0 << 6
   | 0 << 5
   | 1 << 4
   | 1 << 3
   | 0 << 2
   | (params->u.qam.fec_inner != 134 ? 1 << 1 : 0)
   | (params->u.qam.modulation != 128 ? 1 << 0 : 0);


 c->operand[6] = 0 << 7
   | 0 << 0 ;

 c->operand[7] = 0x00;
 c->operand[8] = 0x00;
 c->operand[9] = 0x00;
 c->operand[10] = 0x00;

 c->operand[11] = (((params->frequency / 4000) >> 16) & 0xff) | (2 << 6);
 c->operand[12] = ((params->frequency / 4000) >> 8) & 0xff;
 c->operand[13] = (params->frequency / 4000) & 0xff;
 c->operand[14] = ((params->u.qpsk.symbol_rate / 1000) >> 12) & 0xff;
 c->operand[15] = ((params->u.qpsk.symbol_rate / 1000) >> 4) & 0xff;
 c->operand[16] = ((params->u.qpsk.symbol_rate / 1000) << 4) & 0xf0;
 c->operand[17] = 0x00;

 switch (params->u.qpsk.fec_inner) {
 case 141: c->operand[18] = 0x1; break;
 case 140: c->operand[18] = 0x2; break;
 case 139: c->operand[18] = 0x3; break;
 case 137: c->operand[18] = 0x4; break;
 case 136: c->operand[18] = 0x5; break;
 case 135: c->operand[18] = 0x6; break;
 case 138: c->operand[18] = 0x8; break;
 case 134:
 default: c->operand[18] = 0x0;
 }

 switch (params->u.qam.modulation) {
 case 132: c->operand[19] = 0x08; break;
 case 130: c->operand[19] = 0x10; break;
 case 129: c->operand[19] = 0x18; break;
 case 133: c->operand[19] = 0x20; break;
 case 131: c->operand[19] = 0x28; break;
 case 128:
 default: c->operand[19] = 0x00;
 }

 c->operand[20] = 0x00;
 c->operand[21] = 0x00;

 return 22 + add_pid_filter(fdtv, &c->operand[22]);
}
