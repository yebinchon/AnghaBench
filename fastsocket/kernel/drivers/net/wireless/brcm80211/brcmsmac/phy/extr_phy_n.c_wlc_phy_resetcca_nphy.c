
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int physhim; } ;


 int BBCFG_RESETCCA ;
 int NPHY_RFSEQ_RESET2RX ;
 int OFF ;
 int ON ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int udelay (int) ;
 int wlapi_bmac_phyclk_fgc (int ,int ) ;
 int wlc_phy_force_rfseq_nphy (struct brcms_phy*,int ) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

__attribute__((used)) static void wlc_phy_resetcca_nphy(struct brcms_phy *pi)
{
 u16 val;

 wlapi_bmac_phyclk_fgc(pi->sh->physhim, ON);

 val = read_phy_reg(pi, 0x01);
 write_phy_reg(pi, 0x01, val | BBCFG_RESETCCA);
 udelay(1);
 write_phy_reg(pi, 0x01, val & (~BBCFG_RESETCCA));

 wlapi_bmac_phyclk_fgc(pi->sh->physhim, OFF);

 wlc_phy_force_rfseq_nphy(pi, NPHY_RFSEQ_RESET2RX);
}
