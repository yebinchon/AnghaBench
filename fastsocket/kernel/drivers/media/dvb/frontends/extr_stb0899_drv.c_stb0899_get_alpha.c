
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stb0899_state {int dummy; } ;


 int MODECOEFF ;
 int STB0899_DEMOD ;
 int STB0899_GETFIELD (int ,int ) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;

__attribute__((used)) static int stb0899_get_alpha(struct stb0899_state *state)
{
 u8 mode_coeff;

 mode_coeff = stb0899_read_reg(state, STB0899_DEMOD);

 if (STB0899_GETFIELD(MODECOEFF, mode_coeff) == 1)
  return 20;
 else
  return 35;
}
