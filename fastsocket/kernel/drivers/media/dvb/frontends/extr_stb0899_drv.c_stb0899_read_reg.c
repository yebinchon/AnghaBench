
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb0899_state {int dummy; } ;


 int _stb0899_read_reg (struct stb0899_state*,unsigned int) ;

int stb0899_read_reg(struct stb0899_state *state, unsigned int reg)
{
 int result;

 result = _stb0899_read_reg(state, reg);





 if ((reg != 0xf2ff) && (reg != 0xf6ff) &&
     (((reg & 0xff00) == 0xf200) || ((reg & 0xff00) == 0xf600)))
  _stb0899_read_reg(state, (reg | 0x00ff));

 return result;
}
