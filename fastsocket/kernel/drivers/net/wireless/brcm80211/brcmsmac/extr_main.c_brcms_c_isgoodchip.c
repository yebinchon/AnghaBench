
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_hardware {int corerev; TYPE_1__* wlc; } ;
struct TYPE_2__ {int wiphy; } ;


 int CONF_HAS (int ,int ) ;
 int D11CONF ;
 int wiphy_err (int ,char*,int ) ;

__attribute__((used)) static bool brcms_c_isgoodchip(struct brcms_hardware *wlc_hw)
{


 if (!CONF_HAS(D11CONF, wlc_hw->corerev)) {
  wiphy_err(wlc_hw->wlc->wiphy, "unsupported core rev %d\n",
     wlc_hw->corerev);
  return 0;
 }

 return 1;
}
