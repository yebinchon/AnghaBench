
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {TYPE_1__* internal; } ;
struct TYPE_2__ {int dev_ver; } ;


 int DEMOD ;
 int FE_ERROR ;
 int MANUAL_S2ROLLOFF_FIELD ;
 int MANUAL_SXROLLOFF_FIELD ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int ,int ,int) ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int ) ;
 int dprintk (int ,int,char*) ;

__attribute__((used)) static int stv090x_set_s2rolloff(struct stv090x_state *state)
{
 u32 reg;

 if (state->internal->dev_ver <= 0x20) {

  reg = STV090x_READ_DEMOD(state, DEMOD);
  STV090x_SETFIELD_Px(reg, MANUAL_SXROLLOFF_FIELD, 0x00);
  if (STV090x_WRITE_DEMOD(state, DEMOD, reg) < 0)
   goto err;
 } else {

  reg = STV090x_READ_DEMOD(state, DEMOD);
  STV090x_SETFIELD_Px(reg, MANUAL_S2ROLLOFF_FIELD, 0x00);
  if (STV090x_WRITE_DEMOD(state, DEMOD, reg) < 0)
   goto err;
 }
 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
