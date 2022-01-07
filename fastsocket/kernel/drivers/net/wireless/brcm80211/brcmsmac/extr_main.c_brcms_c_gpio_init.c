
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct brcms_hardware {scalar_t__ antsel_type; int boardflags; TYPE_3__* d11core; TYPE_1__* band; } ;
struct brcms_c_info {struct brcms_hardware* hw; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_5__ {int drv_cc; } ;
struct TYPE_4__ {int pi; } ;


 scalar_t__ ANTSEL_2x3 ;
 scalar_t__ ANTSEL_2x4 ;
 int ANTSEL_CLKDIV_4MHZ ;
 int BFL_PACTRL ;
 int BOARD_GPIO_12 ;
 int BOARD_GPIO_13 ;
 int BOARD_GPIO_PACTRL ;
 int BRCM_BAND_ALL ;
 int D11REGOFFS (int ) ;
 int MCTL_GPOUT_SEL_MASK ;
 int MHF3 ;
 int MHF3_ANTSEL_EN ;
 int MHF3_ANTSEL_MODE ;
 int M_ANTSEL_CLKDIV ;
 int bcma_chipco_gpio_control (int *,int,int) ;
 int bcma_set16 (TYPE_3__*,int ,int) ;
 int brcms_b_mctrl (struct brcms_hardware*,int ,int ) ;
 int brcms_b_mhf (struct brcms_hardware*,int ,int ,int ,int ) ;
 int brcms_b_write_shm (struct brcms_hardware*,int ,int ) ;
 int psm_gpio_oe ;
 int psm_gpio_out ;
 int wlc_phy_antsel_init (int ,int) ;

__attribute__((used)) static void brcms_c_gpio_init(struct brcms_c_info *wlc)
{
 struct brcms_hardware *wlc_hw = wlc->hw;
 u32 gc, gm;


 brcms_b_mctrl(wlc_hw, MCTL_GPOUT_SEL_MASK, 0);
 gc = gm = 0;


 if (wlc_hw->antsel_type == ANTSEL_2x3) {

  brcms_b_mhf(wlc_hw, MHF3, MHF3_ANTSEL_EN,
        MHF3_ANTSEL_EN, BRCM_BAND_ALL);
  brcms_b_mhf(wlc_hw, MHF3, MHF3_ANTSEL_MODE,
        MHF3_ANTSEL_MODE, BRCM_BAND_ALL);


  wlc_phy_antsel_init(wlc_hw->band->pi, 0);

 } else if (wlc_hw->antsel_type == ANTSEL_2x4) {
  gm |= gc |= (BOARD_GPIO_12 | BOARD_GPIO_13);




  bcma_set16(wlc_hw->d11core, D11REGOFFS(psm_gpio_oe),
      (BOARD_GPIO_12 | BOARD_GPIO_13));
  bcma_set16(wlc_hw->d11core, D11REGOFFS(psm_gpio_out),
      (BOARD_GPIO_12 | BOARD_GPIO_13));


  brcms_b_mhf(wlc_hw, MHF3, MHF3_ANTSEL_EN,
        MHF3_ANTSEL_EN, BRCM_BAND_ALL);
  brcms_b_mhf(wlc_hw, MHF3, MHF3_ANTSEL_MODE, 0,
        BRCM_BAND_ALL);


  brcms_b_write_shm(wlc_hw, M_ANTSEL_CLKDIV,
       ANTSEL_CLKDIV_4MHZ);
 }





 if (wlc_hw->boardflags & BFL_PACTRL)
  gm |= gc |= BOARD_GPIO_PACTRL;


 bcma_chipco_gpio_control(&wlc_hw->d11core->bus->drv_cc, gm, gc);
}
