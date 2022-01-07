
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib7000m_state {scalar_t__ reg_offs; } ;


 int dib7000m_write_word (struct dib7000m_state*,int,int ) ;

__attribute__((used)) static void dib7000m_write_tab(struct dib7000m_state *state, u16 *buf)
{
 u16 l = 0, r, *n;
 n = buf;
 l = *n++;
 while (l) {
  r = *n++;

  if (state->reg_offs && (r >= 112 && r <= 331))
   r++;

  do {
   dib7000m_write_word(state, r, *n++);
   r++;
  } while (--l);
  l = *n++;
 }
}
