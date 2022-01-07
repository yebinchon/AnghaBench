
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int dummy; } ;


 int dib7000p_cfg_gpio (struct dib7000p_state*,int ,int ,int ) ;

int dib7000p_set_gpio(struct dvb_frontend *demod, u8 num, u8 dir, u8 val)
{
 struct dib7000p_state *state = demod->demodulator_priv;
 return dib7000p_cfg_gpio(state, num, dir, val);
}
