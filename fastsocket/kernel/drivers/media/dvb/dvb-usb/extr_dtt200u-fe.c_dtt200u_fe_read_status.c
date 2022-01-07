
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dtt200u_fe_state* demodulator_priv; } ;
struct dtt200u_fe_state {int d; } ;
typedef int fe_status_t ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int FE_TIMEDOUT ;
 int GET_TUNE_STATUS ;
 int dvb_usb_generic_rw (int ,int*,int,int*,int,int ) ;

__attribute__((used)) static int dtt200u_fe_read_status(struct dvb_frontend* fe, fe_status_t *stat)
{
 struct dtt200u_fe_state *state = fe->demodulator_priv;
 u8 st = GET_TUNE_STATUS, b[3];

 dvb_usb_generic_rw(state->d,&st,1,b,3,0);

 switch (b[0]) {
  case 0x01:
   *stat = FE_HAS_SIGNAL | FE_HAS_CARRIER |
    FE_HAS_VITERBI | FE_HAS_SYNC | FE_HAS_LOCK;
   break;
  case 0x00:
   *stat = FE_TIMEDOUT;
   break;
  default:
  case 0x02:
   *stat = 0;
   break;
 }
 return 0;
}
