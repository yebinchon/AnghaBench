
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct af9013_state {int dummy; } ;


 int af9013_read_reg (struct af9013_state*,int ,int*) ;
 int* regmask ;

__attribute__((used)) static int af9013_read_reg_bits(struct af9013_state *state, u16 reg, u8 pos,
 u8 len, u8 *val)
{
 int ret;
 u8 tmp;

 ret = af9013_read_reg(state, reg, &tmp);
 if (ret)
  return ret;
 *val = (tmp >> pos) & regmask[len - 1];
 return 0;
}
