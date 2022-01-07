
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int transmission_mode; int bandwidth; } ;
struct TYPE_6__ {TYPE_2__ ofdm; } ;
struct dvb_frontend_parameters {int frequency; TYPE_3__ u; } ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct TYPE_4__ {scalar_t__ spur_protect; } ;
struct dib7000p_state {scalar_t__ timf; TYPE_1__ cfg; scalar_t__ sfn_workaround_active; } ;


 int BANDWIDTH_TO_KHZ (int ) ;
 int EINVAL ;



 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_set_bandwidth (struct dib7000p_state*,int ) ;
 int dib7000p_set_channel (struct dib7000p_state*,struct dvb_frontend_parameters*,int ) ;
 int dib7000p_spur_protect (struct dib7000p_state*,int,int ) ;
 int dib7000p_update_timf (struct dib7000p_state*) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int dprintk (char*) ;
 int msleep (int) ;

__attribute__((used)) static int dib7000p_tune(struct dvb_frontend *demod, struct dvb_frontend_parameters *ch)
{
 struct dib7000p_state *state = demod->demodulator_priv;
 u16 tmp = 0;

 if (ch != ((void*)0))
  dib7000p_set_channel(state, ch, 0);
 else
  return -EINVAL;


 dib7000p_write_word(state, 770, 0x4000);
 dib7000p_write_word(state, 770, 0x0000);
 msleep(45);


 tmp = (0 << 14) | (4 << 10) | (0 << 9) | (3 << 5) | (1 << 4) | (0x3);
 if (state->sfn_workaround_active) {
  dprintk( "SFN workaround is active");
  tmp |= (1 << 9);
  dib7000p_write_word(state, 166, 0x4000);
 } else {
  dib7000p_write_word(state, 166, 0x0000);
 }
 dib7000p_write_word(state, 29, tmp);


 if (state->timf == 0)
  msleep(200);




 tmp = (6 << 8) | 0x80;
 switch (ch->u.ofdm.transmission_mode) {
  case 130: tmp |= (7 << 12); break;
  case 129: tmp |= (8 << 12); break;
  default:
  case 128: tmp |= (9 << 12); break;
 }
 dib7000p_write_word(state, 26, tmp);


 tmp = (0 << 4);
 switch (ch->u.ofdm.transmission_mode) {
  case 130: tmp |= 0x6; break;
  case 129: tmp |= 0x7; break;
  default:
  case 128: tmp |= 0x8; break;
 }
 dib7000p_write_word(state, 32, tmp);


 tmp = (0 << 4);
 switch (ch->u.ofdm.transmission_mode) {
  case 130: tmp |= 0x6; break;
  case 129: tmp |= 0x7; break;
  default:
  case 128: tmp |= 0x8; break;
 }
 dib7000p_write_word(state, 33, tmp);

 tmp = dib7000p_read_word(state,509);
 if (!((tmp >> 6) & 0x1)) {

  tmp = dib7000p_read_word(state,771);
  dib7000p_write_word(state, 771, tmp | (1 << 1));
  dib7000p_write_word(state, 771, tmp);
  msleep(10);
  tmp = dib7000p_read_word(state,509);
 }


 if ((tmp >> 6) & 0x1)
  dib7000p_update_timf(state);

 if (state->cfg.spur_protect)
  dib7000p_spur_protect(state, ch->frequency/1000, BANDWIDTH_TO_KHZ(ch->u.ofdm.bandwidth));

    dib7000p_set_bandwidth(state, BANDWIDTH_TO_KHZ(ch->u.ofdm.bandwidth));
 return 0;
}
