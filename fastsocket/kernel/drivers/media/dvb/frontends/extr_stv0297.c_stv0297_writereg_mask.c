
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv0297_state {int dummy; } ;


 int stv0297_readreg (struct stv0297_state*,int) ;
 int stv0297_writereg (struct stv0297_state*,int,int) ;

__attribute__((used)) static int stv0297_writereg_mask(struct stv0297_state *state, u8 reg, u8 mask, u8 data)
{
 int val;

 val = stv0297_readreg(state, reg);
 val &= ~mask;
 val |= (data & mask);
 stv0297_writereg(state, reg, val);

 return 0;
}
