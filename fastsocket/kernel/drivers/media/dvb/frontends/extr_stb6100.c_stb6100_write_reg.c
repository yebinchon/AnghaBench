
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct stb6100_state {int dummy; } ;
struct TYPE_2__ {size_t mask; size_t set; } ;


 int EREMOTEIO ;
 int FE_ERROR ;
 size_t STB6100_NUMREGS ;
 int dprintk (int ,int ,int,char*,size_t) ;
 TYPE_1__* stb6100_template ;
 int stb6100_write_reg_range (struct stb6100_state*,size_t*,size_t,int) ;
 scalar_t__ unlikely (int) ;
 int verbose ;

__attribute__((used)) static int stb6100_write_reg(struct stb6100_state *state, u8 reg, u8 data)
{
 if (unlikely(reg >= STB6100_NUMREGS)) {
  dprintk(verbose, FE_ERROR, 1, "Invalid register offset 0x%x", reg);
  return -EREMOTEIO;
 }
 data = (data & stb6100_template[reg].mask) | stb6100_template[reg].set;
 return stb6100_write_reg_range(state, &data, reg, 1);
}
