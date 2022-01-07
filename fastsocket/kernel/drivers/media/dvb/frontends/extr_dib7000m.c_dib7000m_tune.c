
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int transmission_mode; int bandwidth; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;
struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {scalar_t__ timf; } ;


 int BANDWIDTH_TO_KHZ (int ) ;
 int DIB7000M_POWER_COR4_CRY_ESRAM_MOUT_NUD ;
 int EINVAL ;



 int dib7000m_read_word (struct dib7000m_state*,int) ;
 int dib7000m_set_bandwidth (struct dib7000m_state*,int ) ;
 int dib7000m_set_channel (struct dib7000m_state*,struct dvb_frontend_parameters*,int ) ;
 int dib7000m_set_power_mode (struct dib7000m_state*,int ) ;
 int dib7000m_update_timf (struct dib7000m_state*) ;
 int dib7000m_write_word (struct dib7000m_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int dib7000m_tune(struct dvb_frontend *demod, struct dvb_frontend_parameters *ch)
{
 struct dib7000m_state *state = demod->demodulator_priv;
 int ret = 0;
 u16 value;


 if (ch != ((void*)0))
  dib7000m_set_channel(state, ch, 0);
 else
  return -EINVAL;


 ret |= dib7000m_write_word(state, 898, 0x4000);
 ret |= dib7000m_write_word(state, 898, 0x0000);
 msleep(45);

 dib7000m_set_power_mode(state, DIB7000M_POWER_COR4_CRY_ESRAM_MOUT_NUD);

 ret |= dib7000m_write_word(state, 29, (0 << 14) | (4 << 10) | (0 << 9) | (3 << 5) | (1 << 4) | (0x3));


 if (state->timf == 0)
  msleep(200);



 value = (6 << 8) | 0x80;
 switch (ch->u.ofdm.transmission_mode) {
  case 130: value |= (7 << 12); break;
  case 129: value |= (8 << 12); break;
  default:
  case 128: value |= (9 << 12); break;
 }
 ret |= dib7000m_write_word(state, 26, value);


 value = (0 << 4);
 switch (ch->u.ofdm.transmission_mode) {
  case 130: value |= 0x6; break;
  case 129: value |= 0x7; break;
  default:
  case 128: value |= 0x8; break;
 }
 ret |= dib7000m_write_word(state, 32, value);


 value = (0 << 4);
 switch (ch->u.ofdm.transmission_mode) {
  case 130: value |= 0x6; break;
  case 129: value |= 0x7; break;
  default:
  case 128: value |= 0x8; break;
 }
 ret |= dib7000m_write_word(state, 33, value);


 if ((dib7000m_read_word(state, 535) >> 6) & 0x1)
  dib7000m_update_timf(state);

    dib7000m_set_bandwidth(state, BANDWIDTH_TO_KHZ(ch->u.ofdm.bandwidth));
 return ret;
}
