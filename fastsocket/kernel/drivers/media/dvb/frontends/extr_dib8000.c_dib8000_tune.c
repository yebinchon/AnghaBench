
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct TYPE_3__ {int bandwidth_hz; int isdbt_sb_mode; scalar_t__ isdbt_partial_reception; } ;
struct TYPE_4__ {TYPE_1__ dtv_property_cache; } ;
struct dib8000_state {scalar_t__ timf; int revision; TYPE_2__ fe; } ;


 int EINVAL ;
 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_set_bandwidth (struct dib8000_state*,int) ;
 int dib8000_set_channel (struct dib8000_state*,int ,int ) ;
 int dib8000_update_timf (struct dib8000_state*) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int fft_to_mode (struct dib8000_state*) ;
 int msleep (int) ;

__attribute__((used)) static int dib8000_tune(struct dvb_frontend *fe)
{
 struct dib8000_state *state = fe->demodulator_priv;
 int ret = 0;
 u16 value, mode = fft_to_mode(state);


 if (state == ((void*)0))
  return -EINVAL;

 dib8000_set_bandwidth(state, state->fe.dtv_property_cache.bandwidth_hz / 1000);
 dib8000_set_channel(state, 0, 0);


 ret |= dib8000_write_word(state, 770, 0x4000);
 ret |= dib8000_write_word(state, 770, 0x0000);
 msleep(45);





 if (state->timf == 0) {
  if (state->fe.dtv_property_cache.isdbt_sb_mode == 1) {
   if (state->fe.dtv_property_cache.isdbt_partial_reception == 0)
    msleep(300);
   else
    msleep(500);
  } else
   msleep(200);
 }

 if (state->fe.dtv_property_cache.isdbt_sb_mode == 1) {
  if (state->fe.dtv_property_cache.isdbt_partial_reception == 0) {


   dib8000_write_word(state, 32, ((13 - mode) << 12) | (6 << 8) | 0x40);



   ret |= dib8000_write_word(state, 37, (12 - mode) | ((5 + mode) << 5));

  } else {


   dib8000_write_word(state, 32, ((12 - mode) << 12) | (6 << 8) | 0x60);

   ret |= dib8000_write_word(state, 37, (11 - mode) | ((5 + mode) << 5));
  }

 } else {

  dib8000_write_word(state, 32, ((11 - mode) << 12) | (6 << 8) | 0x80);

  ret |= dib8000_write_word(state, 37, (10 - mode) | ((5 + mode) << 5));

 }


 if ((dib8000_read_word(state, 568) >> 11) & 0x1)
  dib8000_update_timf(state);


 dib8000_write_word(state, 6, 0x200);

 if (state->revision == 0x8002) {
  value = dib8000_read_word(state, 903);
  dib8000_write_word(state, 903, value & ~(1 << 3));
  msleep(1);
  dib8000_write_word(state, 903, value | (1 << 3));
 }

 return ret;
}
