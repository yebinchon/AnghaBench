
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dib7000p_state {int dummy; } ;


 int dib7000p_write_word (struct dib7000p_state*,scalar_t__,int ) ;

__attribute__((used)) static void dib7000p_write_tab(struct dib7000p_state *state, u16 *buf)
{
 u16 l = 0, r, *n;
 n = buf;
 l = *n++;
 while (l) {
  r = *n++;

  do {
   dib7000p_write_word(state, r, *n++);
   r++;
  } while (--l);
  l = *n++;
 }
}
