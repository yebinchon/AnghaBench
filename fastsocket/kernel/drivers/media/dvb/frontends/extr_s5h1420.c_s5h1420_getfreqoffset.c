
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5h1420_state {int fclk; } ;


 int s5h1420_readreg (struct s5h1420_state*,int) ;
 int s5h1420_writereg (struct s5h1420_state*,int,int) ;

__attribute__((used)) static int s5h1420_getfreqoffset(struct s5h1420_state* state)
{
 int val;

 s5h1420_writereg(state, 0x06, s5h1420_readreg(state, 0x06) | 0x08);
 val = s5h1420_readreg(state, 0x0e) << 16;
 val |= s5h1420_readreg(state, 0x0f) << 8;
 val |= s5h1420_readreg(state, 0x10);
 s5h1420_writereg(state, 0x06, s5h1420_readreg(state, 0x06) & 0xf7);

 if (val & 0x800000)
  val |= 0xff000000;



 val = (((-val) * (state->fclk/1000000)) / (1<<24));

 return val;
}
