
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bcma_drv_cc {TYPE_1__* core; } ;
struct TYPE_4__ {int pkg; scalar_t__ rev; } ;
struct bcma_bus {TYPE_2__ chipinfo; } ;
struct TYPE_3__ {struct bcma_bus* bus; } ;


 int BCMA_CC_CHIPCTL ;
 int BCMA_CHIPCTL_4331_EXTPA_EN ;
 int BCMA_CHIPCTL_4331_EXTPA_EN2 ;
 int BCMA_CHIPCTL_4331_EXTPA_ON_GPIO2_5 ;
 int bcma_cc_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_cc_write32 (struct bcma_drv_cc*,int ,int ) ;

void bcma_chipco_bcm4331_ext_pa_lines_ctl(struct bcma_drv_cc *cc, bool enable)
{
 struct bcma_bus *bus = cc->core->bus;
 u32 val;

 val = bcma_cc_read32(cc, BCMA_CC_CHIPCTL);
 if (enable) {
  val |= BCMA_CHIPCTL_4331_EXTPA_EN;
  if (bus->chipinfo.pkg == 9 || bus->chipinfo.pkg == 11)
   val |= BCMA_CHIPCTL_4331_EXTPA_ON_GPIO2_5;
  else if (bus->chipinfo.rev > 0)
   val |= BCMA_CHIPCTL_4331_EXTPA_EN2;
 } else {
  val &= ~BCMA_CHIPCTL_4331_EXTPA_EN;
  val &= ~BCMA_CHIPCTL_4331_EXTPA_EN2;
  val &= ~BCMA_CHIPCTL_4331_EXTPA_ON_GPIO2_5;
 }
 bcma_cc_write32(cc, BCMA_CC_CHIPCTL, val);
}
