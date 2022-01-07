
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv090x_state {int dummy; } ;
typedef int s32 ;


 int AGC2REF ;
 int CARFREQ ;
 int CFRINIT0 ;
 int CFRINIT1 ;
 int CFR_AUTOSCAN_FIELD ;
 int DMDCFGMD ;
 int DMDISTATE ;
 int DSTATUS ;
 int FE_ERROR ;
 int RTC ;
 int RTCS2 ;
 int STV090x_GETFIELD_Px (int,int ) ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int,int ,int) ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int TMGLOCK_QUALITY_FIELD ;
 int TMGTHFALL ;
 int TMGTHRISE ;
 int dprintk (int ,int,char*) ;
 int msleep (int) ;

__attribute__((used)) static int stv090x_chk_tmg(struct stv090x_state *state)
{
 u32 reg;
 s32 tmg_cpt = 0, i;
 u8 freq, tmg_thh, tmg_thl;
 int tmg_lock = 0;

 freq = STV090x_READ_DEMOD(state, CARFREQ);
 tmg_thh = STV090x_READ_DEMOD(state, TMGTHRISE);
 tmg_thl = STV090x_READ_DEMOD(state, TMGTHFALL);
 if (STV090x_WRITE_DEMOD(state, TMGTHRISE, 0x20) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, TMGTHFALL, 0x00) < 0)
  goto err;

 reg = STV090x_READ_DEMOD(state, DMDCFGMD);
 STV090x_SETFIELD_Px(reg, CFR_AUTOSCAN_FIELD, 0x00);
 if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, RTC, 0x80) < 0)
  goto err;

 if (STV090x_WRITE_DEMOD(state, RTCS2, 0x40) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, CARFREQ, 0x00) < 0)
  goto err;

 if (STV090x_WRITE_DEMOD(state, CFRINIT1, 0x00) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, CFRINIT0, 0x00) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, AGC2REF, 0x65) < 0)
  goto err;

 if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x18) < 0)
  goto err;
 msleep(10);

 for (i = 0; i < 10; i++) {
  reg = STV090x_READ_DEMOD(state, DSTATUS);
  if (STV090x_GETFIELD_Px(reg, TMGLOCK_QUALITY_FIELD) >= 2)
   tmg_cpt++;
  msleep(1);
 }
 if (tmg_cpt >= 3)
  tmg_lock = 1;

 if (STV090x_WRITE_DEMOD(state, AGC2REF, 0x38) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, RTC, 0x88) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, RTCS2, 0x68) < 0)
  goto err;

 if (STV090x_WRITE_DEMOD(state, CARFREQ, freq) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, TMGTHRISE, tmg_thh) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, TMGTHFALL, tmg_thl) < 0)
  goto err;

 return tmg_lock;

err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
