
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_au1550_data {scalar_t__ psc_base; } ;
struct TYPE_2__ {int psc_smbcfg; int psc_smbstat; int psc_smbtmr; int psc_ctrl; int psc_smbmsk; int psc_sel; } ;
typedef TYPE_1__ psc_smb_t ;


 int PSC_CTRL_DISABLE ;
 int PSC_CTRL_ENABLE ;
 int PSC_CTRL_SUSPEND ;
 int PSC_SEL_PS_SMBUSMODE ;
 int PSC_SMBCFG_DD_DISABLE ;
 int PSC_SMBCFG_DE_ENABLE ;
 int PSC_SMBCFG_DIV8 ;
 int PSC_SMBCFG_RT_FIFO8 ;
 int PSC_SMBCFG_SET_DIV (int ) ;
 int PSC_SMBCFG_TT_FIFO8 ;
 int PSC_SMBMSK_ALLMASK ;
 int PSC_SMBSTAT_SR ;
 int PSC_SMBTMR_SET_CH (int) ;
 int PSC_SMBTMR_SET_CL (int) ;
 int PSC_SMBTMR_SET_PS (int) ;
 int PSC_SMBTMR_SET_PU (int) ;
 int PSC_SMBTMR_SET_SH (int) ;
 int PSC_SMBTMR_SET_SU (int) ;
 int PSC_SMBTMR_SET_TH (int ) ;
 int au_sync () ;

__attribute__((used)) static void i2c_au1550_setup(struct i2c_au1550_data *priv)
{
 volatile psc_smb_t *sp = (volatile psc_smb_t *)priv->psc_base;
 u32 stat;

 sp->psc_ctrl = PSC_CTRL_DISABLE;
 au_sync();
 sp->psc_sel = PSC_SEL_PS_SMBUSMODE;
 sp->psc_smbcfg = 0;
 au_sync();
 sp->psc_ctrl = PSC_CTRL_ENABLE;
 au_sync();
 do {
  stat = sp->psc_smbstat;
  au_sync();
 } while ((stat & PSC_SMBSTAT_SR) == 0);

 sp->psc_smbcfg = (PSC_SMBCFG_RT_FIFO8 | PSC_SMBCFG_TT_FIFO8 |
    PSC_SMBCFG_DD_DISABLE);




 sp->psc_smbcfg |= PSC_SMBCFG_SET_DIV(PSC_SMBCFG_DIV8);
 sp->psc_smbmsk = PSC_SMBMSK_ALLMASK;
 au_sync();




 sp->psc_smbtmr = PSC_SMBTMR_SET_TH(0) | PSC_SMBTMR_SET_PS(15) | PSC_SMBTMR_SET_PU(15) | PSC_SMBTMR_SET_SH(15) | PSC_SMBTMR_SET_SU(15) | PSC_SMBTMR_SET_CL(15) | PSC_SMBTMR_SET_CH(15);



 au_sync();

 sp->psc_smbcfg |= PSC_SMBCFG_DE_ENABLE;
 do {
  stat = sp->psc_smbstat;
  au_sync();
 } while ((stat & PSC_SMBSTAT_SR) == 0);

 sp->psc_ctrl = PSC_CTRL_SUSPEND;
 au_sync();
}
