
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dib0070_state* tuner_priv; } ;
struct dib0070_state {int dummy; } ;


 int dib0070_read_reg (struct dib0070_state*,int) ;

u8 dib0070_get_rf_output(struct dvb_frontend *fe)
{
 struct dib0070_state *state = fe->tuner_priv;
 return (dib0070_read_reg(state, 0x07) >> 11) & 0x3;
}
