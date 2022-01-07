
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stb0899_state {int dummy; } ;


 int stb0899_write_regs (struct stb0899_state*,unsigned int,int *,int) ;

int stb0899_write_reg(struct stb0899_state *state, unsigned int reg, u8 data)
{
 return stb0899_write_regs(state, reg, &data, 1);
}
