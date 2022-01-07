
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy_lcnphy {int lcnphy_noise_samples; int lcnphy_rawtempsense; int lcnphy_cal_temper; scalar_t__ lcnphy_cal_counter; } ;
struct TYPE_3__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_2__* sh; int radio_chanspec; TYPE_1__ u; } ;
struct TYPE_4__ {int boardflags; int sih; } ;


 int AFE_CLK_INIT_MODE_TXRX2X ;
 int BFL_FEM ;
 scalar_t__ CHSPEC_IS2G (int ) ;
 int CHSPEC_IS40 (int ) ;
 int FIXED_TXPWR ;
 int LCNPHY_NOISE_SAMPLES_DEFAULT ;
 int LCNPHY_TX_PWR_CTRL_HW ;
 int PHY_PERICAL_PHYINIT ;
 int and_phy_reg (struct brcms_phy*,int,int) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int or_phy_reg (struct brcms_phy*,int,int) ;
 int si_pmu_chipcontrol (int ,int ,int,int) ;
 int si_pmu_regcontrol (int ,int ,int,int) ;
 int udelay (int) ;
 int wlc_lcnphy_afe_clk_init (struct brcms_phy*,int ) ;
 int wlc_lcnphy_agc_temp_init (struct brcms_phy*) ;
 int wlc_lcnphy_baseband_init (struct brcms_phy*) ;
 int wlc_lcnphy_calib_modes (struct brcms_phy*,int ) ;
 int wlc_lcnphy_radio_init (struct brcms_phy*) ;
 int wlc_lcnphy_set_tx_pwr_by_index (struct brcms_phy*,int ) ;
 int wlc_lcnphy_set_tx_pwr_ctrl (struct brcms_phy*,int ) ;
 int wlc_lcnphy_temp_adj (struct brcms_phy*) ;
 scalar_t__ wlc_lcnphy_tempsense_based_pwr_ctrl_enabled (struct brcms_phy*) ;
 int wlc_lcnphy_tx_pwr_ctrl_init (struct brcms_phy_pub*) ;
 int wlc_phy_chanspec_set (struct brcms_phy_pub*,int ) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

void wlc_phy_init_lcnphy(struct brcms_phy *pi)
{
 u8 phybw40;
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;
 phybw40 = CHSPEC_IS40(pi->radio_chanspec);

 pi_lcn->lcnphy_cal_counter = 0;
 pi_lcn->lcnphy_cal_temper = pi_lcn->lcnphy_rawtempsense;

 or_phy_reg(pi, 0x44a, 0x80);
 and_phy_reg(pi, 0x44a, 0x7f);

 wlc_lcnphy_afe_clk_init(pi, AFE_CLK_INIT_MODE_TXRX2X);

 write_phy_reg(pi, 0x60a, 160);

 write_phy_reg(pi, 0x46a, 25);

 wlc_lcnphy_baseband_init(pi);

 wlc_lcnphy_radio_init(pi);

 if (CHSPEC_IS2G(pi->radio_chanspec))
  wlc_lcnphy_tx_pwr_ctrl_init((struct brcms_phy_pub *) pi);

 wlc_phy_chanspec_set((struct brcms_phy_pub *) pi, pi->radio_chanspec);

 si_pmu_regcontrol(pi->sh->sih, 0, 0xf, 0x9);

 si_pmu_chipcontrol(pi->sh->sih, 0, 0xffffffff, 0x03CDDDDD);

 if ((pi->sh->boardflags & BFL_FEM)
     && wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(pi))
  wlc_lcnphy_set_tx_pwr_by_index(pi, FIXED_TXPWR);

 wlc_lcnphy_agc_temp_init(pi);

 wlc_lcnphy_temp_adj(pi);

 mod_phy_reg(pi, 0x448, (0x1 << 14), (1) << 14);

 udelay(100);
 mod_phy_reg(pi, 0x448, (0x1 << 14), (0) << 14);

 wlc_lcnphy_set_tx_pwr_ctrl(pi, LCNPHY_TX_PWR_CTRL_HW);
 pi_lcn->lcnphy_noise_samples = LCNPHY_NOISE_SAMPLES_DEFAULT;
 wlc_lcnphy_calib_modes(pi, PHY_PERICAL_PHYINIT);
}
