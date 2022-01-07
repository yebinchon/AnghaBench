
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib7000m_state {int dummy; } ;


 int dib7000m_read_word (struct dib7000m_state*,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib7000m_autosearch_irq(struct dib7000m_state *state, u16 reg)
{
 u16 irq_pending = dib7000m_read_word(state, reg);

 if (irq_pending & 0x1) {
  dprintk( "autosearch failed");
  return 1;
 }

 if (irq_pending & 0x2) {
  dprintk( "autosearch succeeded");
  return 2;
 }
 return 0;
}
