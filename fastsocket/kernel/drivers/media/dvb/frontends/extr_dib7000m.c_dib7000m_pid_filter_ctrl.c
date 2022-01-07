
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {scalar_t__ reg_offs; } ;


 int dib7000m_read_word (struct dib7000m_state*,scalar_t__) ;
 int dib7000m_write_word (struct dib7000m_state*,scalar_t__,int) ;
 int dprintk (char*,int) ;

int dib7000m_pid_filter_ctrl(struct dvb_frontend *fe, u8 onoff)
{
 struct dib7000m_state *state = fe->demodulator_priv;
 u16 val = dib7000m_read_word(state, 294 + state->reg_offs) & 0xffef;
 val |= (onoff & 0x1) << 4;
 dprintk("PID filter enabled %d", onoff);
 return dib7000m_write_word(state, 294 + state->reg_offs, val);
}
