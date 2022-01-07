
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct af9013_state {int dummy; } ;


 int af9013_write_regs (struct af9013_state*,int,int ,int*,int) ;

__attribute__((used)) static int af9013_write_ofsm_regs(struct af9013_state *state, u16 reg, u8 *val,
 u8 len)
{
 u8 mbox = (1 << 0)|(1 << 1)|((len - 1) << 2)|(1 << 6)|(1 << 7);
 return af9013_write_regs(state, mbox, reg, val, len);
}
