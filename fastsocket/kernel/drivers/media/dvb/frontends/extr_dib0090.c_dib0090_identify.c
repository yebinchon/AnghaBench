
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {int id; struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int dummy; } ;


 int dib0090_p1b_register (struct dvb_frontend*) ;
 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dprintk (char*,int,...) ;

__attribute__((used)) static u16 dib0090_identify(struct dvb_frontend *fe)
{
 struct dib0090_state *state = fe->tuner_priv;
 u16 v;

 v = dib0090_read_reg(state, 0x1a);
 v &= 0x3ff;
 dprintk("P/V: %04x:", v);

 if ((v >> 8) & 0xf)
  dprintk("FE%d : Product ID = 0x%x : KROSUS", fe->id, (v >> 8) & 0xf);
 else
  return 0xff;

 v &= 0xff;
 if (((v >> 5) & 0x7) == 0x1)
  dprintk("FE%d : MP001 : 9090/8096", fe->id);
 else if (((v >> 5) & 0x7) == 0x4)
  dprintk("FE%d : MP005 : Single Sband", fe->id);
 else if (((v >> 5) & 0x7) == 0x6)
  dprintk("FE%d : MP008 : diversity VHF-UHF-LBAND", fe->id);
 else if (((v >> 5) & 0x7) == 0x7)
  dprintk("FE%d : MP009 : diversity 29098 CBAND-UHF-LBAND-SBAND", fe->id);
 else
  return 0xff;


 if ((v & 0x1f) == 0x3)
  dprintk("FE%d : P1-D/E/F detected", fe->id);
 else if ((v & 0x1f) == 0x1)
  dprintk("FE%d : P1C detected", fe->id);
 else if ((v & 0x1f) == 0x0) {




  dprintk("FE%d : P1-A/B detected: driver is deactivated - not available", fe->id);
  return 0xff;

 }

 return v;
}
