
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
typedef int fe_sec_tone_mode_t ;


 int DISEQC_RESET_FIELD ;
 int DISTXCTL ;
 int DISTX_MODE_FIELD ;
 int EINVAL ;
 int FE_ERROR ;


 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int ,int ,int) ;
 int STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int ) ;
 int dprintk (int ,int,char*) ;

__attribute__((used)) static int stv090x_set_tone(struct dvb_frontend *fe, fe_sec_tone_mode_t tone)
{
 struct stv090x_state *state = fe->demodulator_priv;
 u32 reg;

 reg = STV090x_READ_DEMOD(state, DISTXCTL);
 switch (tone) {
 case 128:
  STV090x_SETFIELD_Px(reg, DISTX_MODE_FIELD, 0);
  STV090x_SETFIELD_Px(reg, DISEQC_RESET_FIELD, 1);
  if (STV090x_WRITE_DEMOD(state, DISTXCTL, reg) < 0)
   goto err;
  STV090x_SETFIELD_Px(reg, DISEQC_RESET_FIELD, 0);
  if (STV090x_WRITE_DEMOD(state, DISTXCTL, reg) < 0)
   goto err;
  break;

 case 129:
  STV090x_SETFIELD_Px(reg, DISTX_MODE_FIELD, 0);
  STV090x_SETFIELD_Px(reg, DISEQC_RESET_FIELD, 1);
  if (STV090x_WRITE_DEMOD(state, DISTXCTL, reg) < 0)
   goto err;
  break;
 default:
  return -EINVAL;
 }

 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
