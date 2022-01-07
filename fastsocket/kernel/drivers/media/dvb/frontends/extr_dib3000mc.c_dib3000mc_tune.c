
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int bandwidth; int transmission_mode; scalar_t__ constellation; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;
struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {scalar_t__ sfn_workaround_active; } ;


 int BANDWIDTH_TO_KHZ (int ) ;
 int TRANSMISSION_MODE_8K ;
 int dib3000mc_read_word (struct dib3000mc_state*,int) ;
 int dib3000mc_set_adp_cfg (struct dib3000mc_state*,int ) ;
 int dib3000mc_set_channel_cfg (struct dib3000mc_state*,struct dvb_frontend_parameters*,int ) ;
 int dib3000mc_set_timing (struct dib3000mc_state*,int ,int ,int) ;
 int dib3000mc_write_word (struct dib3000mc_state*,int,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib3000mc_tune(struct dvb_frontend *demod, struct dvb_frontend_parameters *ch)
{
 struct dib3000mc_state *state = demod->demodulator_priv;


 dib3000mc_set_channel_cfg(state, ch, 0);


 if (state->sfn_workaround_active) {
  dprintk("SFN workaround is active\n");
  dib3000mc_write_word(state, 29, 0x1273);
  dib3000mc_write_word(state, 108, 0x4000);
 } else {
  dib3000mc_write_word(state, 29, 0x1073);
  dib3000mc_write_word(state, 108, 0x0000);
 }

 dib3000mc_set_adp_cfg(state, (u8)ch->u.ofdm.constellation);
 if (ch->u.ofdm.transmission_mode == TRANSMISSION_MODE_8K) {
  dib3000mc_write_word(state, 26, 38528);
  dib3000mc_write_word(state, 33, 8);
 } else {
  dib3000mc_write_word(state, 26, 30336);
  dib3000mc_write_word(state, 33, 6);
 }

 if (dib3000mc_read_word(state, 509) & 0x80)
  dib3000mc_set_timing(state, ch->u.ofdm.transmission_mode, BANDWIDTH_TO_KHZ(ch->u.ofdm.bandwidth), 1);

 return 0;
}
