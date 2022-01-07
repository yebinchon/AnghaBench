
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct af9013_state {int dummy; } ;


 int af9013_write_ofdm_regs (struct af9013_state*,int ,int *,int) ;

__attribute__((used)) static int af9013_write_reg(struct af9013_state *state, u16 reg, u8 val)
{
 return af9013_write_ofdm_regs(state, reg, &val, 1);
}
