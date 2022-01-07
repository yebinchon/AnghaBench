
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcms_hardware {struct bcma_device* d11core; } ;
struct brcms_c_info {int macintmask; int defmacintmask; struct brcms_hardware* hw; } ;
struct bcma_device {int dev; } ;
struct TYPE_2__ {int intstatus; } ;


 int D11REGOFFS (int) ;
 int DEF_RXINTMASK ;
 int MI_DMAINT ;
 size_t RX_FIFO ;
 int bcma_read32 (struct bcma_device*,int ) ;
 int bcma_write32 (struct bcma_device*,int ,int) ;
 scalar_t__ brcms_deviceremoved (struct brcms_c_info*) ;
 TYPE_1__* intctrlregs ;
 int macintmask ;
 int trace_brcms_macintstatus (int *,int,int,int) ;

__attribute__((used)) static inline u32 wlc_intstatus(struct brcms_c_info *wlc, bool in_isr)
{
 struct brcms_hardware *wlc_hw = wlc->hw;
 struct bcma_device *core = wlc_hw->d11core;
 u32 macintstatus, mask;


 macintstatus = bcma_read32(core, D11REGOFFS(macintstatus));
 mask = in_isr ? wlc->macintmask : wlc->defmacintmask;

 trace_brcms_macintstatus(&core->dev, in_isr, macintstatus, mask);


 if (brcms_deviceremoved(wlc))
  return -1;




 if (macintstatus == 0xffffffff)
  return 0;


 macintstatus &= mask;


 if (macintstatus == 0)
  return 0;


 bcma_write32(core, D11REGOFFS(macintmask), 0);
 (void)bcma_read32(core, D11REGOFFS(macintmask));
 wlc->macintmask = 0;


 bcma_write32(core, D11REGOFFS(macintstatus), macintstatus);


 if (macintstatus & MI_DMAINT)





  bcma_write32(core, D11REGOFFS(intctrlregs[RX_FIFO].intstatus),
        DEF_RXINTMASK);

 return macintstatus;
}
