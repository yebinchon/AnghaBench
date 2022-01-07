
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*,int) ;

int dib8000_pid_filter_ctrl(struct dvb_frontend *fe, u8 onoff)
{
 struct dib8000_state *st = fe->demodulator_priv;
    u16 val = dib8000_read_word(st, 299) & 0xffef;
    val |= (onoff & 0x1) << 4;

    dprintk("pid filter enabled %d", onoff);
    return dib8000_write_word(st, 299, val);
}
