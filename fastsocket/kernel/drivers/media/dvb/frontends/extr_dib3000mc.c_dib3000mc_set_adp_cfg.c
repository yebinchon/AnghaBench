
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib3000mc_state {int dummy; } ;
typedef int s16 ;





 int dib3000mc_write_word (struct dib3000mc_state*,int,int) ;

__attribute__((used)) static void dib3000mc_set_adp_cfg(struct dib3000mc_state *state, s16 qam)
{
 u16 cfg[4] = { 0 },reg;
 switch (qam) {
  case 128:
   cfg[0] = 0x099a; cfg[1] = 0x7fae; cfg[2] = 0x0333; cfg[3] = 0x7ff0;
   break;
  case 130:
   cfg[0] = 0x023d; cfg[1] = 0x7fdf; cfg[2] = 0x00a4; cfg[3] = 0x7ff0;
   break;
  case 129:
   cfg[0] = 0x0148; cfg[1] = 0x7ff0; cfg[2] = 0x00a4; cfg[3] = 0x7ff8;
   break;
 }
 for (reg = 129; reg < 133; reg++)
  dib3000mc_write_word(state, reg, cfg[reg - 129]);
}
