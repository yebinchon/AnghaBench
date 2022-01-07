
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dib8000_state {int dummy; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;

__attribute__((used)) static u32 dib8000_read32(struct dib8000_state *state, u16 reg)
{
 u16 rw[2];

 rw[0] = dib8000_read_word(state, reg + 0);
 rw[1] = dib8000_read_word(state, reg + 1);

 return ((rw[0] << 16) | (rw[1]));
}
