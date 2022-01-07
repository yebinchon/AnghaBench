
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx24113_state {int rev; scalar_t__ vcodiv; } ;


 scalar_t__ VCODIV4 ;
 int cx24113_readreg (struct cx24113_state*,int) ;
 int cx24113_writereg (struct cx24113_state*,int,int) ;

__attribute__((used)) static int cx24113_set_Fref(struct cx24113_state *state, u8 high)
{
 u8 xtal = cx24113_readreg(state, 0x02);
 if (state->rev == 0x43 && state->vcodiv == VCODIV4)
  high = 1;

 xtal &= ~0x2;
 if (high)
  xtal |= high << 1;
 return cx24113_writereg(state, 0x02, xtal);
}
