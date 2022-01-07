
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vp7045_fe_state {int d; } ;
struct TYPE_3__ {int bandwidth; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {int frequency; TYPE_2__ u; } ;
struct dvb_frontend {struct vp7045_fe_state* demodulator_priv; } ;






 int EINVAL ;
 int EOPNOTSUPP ;
 int LOCK_TUNER_COMMAND ;
 int vp7045_usb_op (int ,int ,int*,int,int *,int ,int) ;

__attribute__((used)) static int vp7045_fe_set_frontend(struct dvb_frontend* fe,
      struct dvb_frontend_parameters *fep)
{
 struct vp7045_fe_state *state = fe->demodulator_priv;
 u8 buf[5];
 u32 freq = fep->frequency / 1000;

 buf[0] = (freq >> 16) & 0xff;
 buf[1] = (freq >> 8) & 0xff;
 buf[2] = freq & 0xff;
 buf[3] = 0;

 switch (fep->u.ofdm.bandwidth) {
  case 129: buf[4] = 8; break;
  case 130: buf[4] = 7; break;
  case 131: buf[4] = 6; break;
  case 128: return -EOPNOTSUPP;
  default:
   return -EINVAL;
 }

 vp7045_usb_op(state->d,LOCK_TUNER_COMMAND,buf,5,((void*)0),0,200);
 return 0;
}
