
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib8000_autosearch_irq(struct dvb_frontend *fe)
{
 struct dib8000_state *state = fe->demodulator_priv;
 u16 irq_pending = dib8000_read_word(state, 1284);

 if (irq_pending & 0x1) {
  dprintk("dib8000_autosearch_irq failed");
  return 1;
 }

 if (irq_pending & 0x2) {
  dprintk("dib8000_autosearch_irq succeeded");
  return 2;
 }

 return 0;
}
