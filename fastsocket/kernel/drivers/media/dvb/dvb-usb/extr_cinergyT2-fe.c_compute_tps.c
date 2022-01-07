
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct dvb_ofdm_parameters {int code_rate_HP; int code_rate_LP; int constellation; int transmission_mode; int guard_interval; int hierarchy_information; } ;
struct TYPE_2__ {struct dvb_ofdm_parameters ofdm; } ;
struct dvb_frontend_parameters {TYPE_1__ u; } ;
__attribute__((used)) static uint16_t compute_tps(struct dvb_frontend_parameters *p)
{
 struct dvb_ofdm_parameters *op = &p->u.ofdm;
 uint16_t tps = 0;

 switch (op->code_rate_HP) {
 case 145:
  tps |= (1 << 7);
  break;
 case 144:
  tps |= (2 << 7);
  break;
 case 143:
  tps |= (3 << 7);
  break;
 case 142:
  tps |= (4 << 7);
  break;
 case 146:
 case 141:
 default:
                       ;
 }

 switch (op->code_rate_LP) {
 case 145:
  tps |= (1 << 4);
  break;
 case 144:
  tps |= (2 << 4);
  break;
 case 143:
  tps |= (3 << 4);
  break;
 case 142:
  tps |= (4 << 4);
  break;
 case 146:
 case 141:
 default:
                       ;
 }

 switch (op->constellation) {
 case 132:
  tps |= (1 << 13);
  break;
 case 131:
  tps |= (2 << 13);
  break;
 case 130:
 default:
                        ;
 }

 switch (op->transmission_mode) {
 case 128:
  tps |= (1 << 0);
  break;
 case 129:
 default:
                       ;
 }

 switch (op->guard_interval) {
 case 140:
  tps |= (1 << 2);
  break;
 case 137:
  tps |= (2 << 2);
  break;
 case 138:
  tps |= (3 << 2);
  break;
 case 139:
 default:
                       ;
 }

 switch (op->hierarchy_information) {
 case 136:
  tps |= (1 << 10);
  break;
 case 135:
  tps |= (2 << 10);
  break;
 case 134:
  tps |= (3 << 10);
  break;
 case 133:
 default:
                        ;
 }

 return tps;
}
