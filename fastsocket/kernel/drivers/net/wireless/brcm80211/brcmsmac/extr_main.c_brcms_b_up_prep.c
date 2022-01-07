
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcms_hardware {int sih; TYPE_2__* d11core; int unit; } ;
struct TYPE_5__ {TYPE_1__* bus; } ;
struct TYPE_4__ {int * drv_pci; } ;


 int BCMA_CLKMODE_FAST ;
 int BRCMS_USE_COREFLAGS ;
 int ENOMEDIUM ;
 int OFF ;
 int ON ;
 int ai_clkctl_init (int ) ;
 int ai_pci_down (int ) ;
 int ai_pci_up (int ) ;
 int bcma_core_pci_irq_ctl (int *,TYPE_2__*,int) ;
 int brcms_b_clkctl_clk (struct brcms_hardware*,int ) ;
 int brcms_b_corereset (struct brcms_hardware*,int ) ;
 scalar_t__ brcms_b_radio_read_hwdisabled (struct brcms_hardware*) ;
 int brcms_b_xtal (struct brcms_hardware*,int ) ;
 int brcms_dbg_info (TYPE_2__*,char*,int ) ;

__attribute__((used)) static int brcms_b_up_prep(struct brcms_hardware *wlc_hw)
{
 brcms_dbg_info(wlc_hw->d11core, "wl%d\n", wlc_hw->unit);





 brcms_b_xtal(wlc_hw, ON);
 ai_clkctl_init(wlc_hw->sih);
 brcms_b_clkctl_clk(wlc_hw, BCMA_CLKMODE_FAST);





 bcma_core_pci_irq_ctl(&wlc_hw->d11core->bus->drv_pci[0], wlc_hw->d11core,
         1);






 if (brcms_b_radio_read_hwdisabled(wlc_hw)) {

  ai_pci_down(wlc_hw->sih);
  brcms_b_xtal(wlc_hw, OFF);
  return -ENOMEDIUM;
 }

 ai_pci_up(wlc_hw->sih);


 brcms_b_corereset(wlc_hw, BRCMS_USE_COREFLAGS);

 return 0;
}
