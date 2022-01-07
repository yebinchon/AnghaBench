
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {void (* calinit ) (struct brcms_phy*) ;} ;
struct brcms_phy {int initialized; TYPE_1__ pi_fptr; int d11core; } ;


 int D11REGOFFS (int ) ;
 int MCTL_EN_MAC ;
 scalar_t__ WARN (int,char*) ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 void stub1 (struct brcms_phy*) ;

void wlc_phy_cal_init(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 void (*cal_init)(struct brcms_phy *) = ((void*)0);

 if (WARN((bcma_read32(pi->d11core, D11REGOFFS(maccontrol)) &
    MCTL_EN_MAC) != 0, "HW error: MAC enabled during phy cal\n"))
  return;

 if (!pi->initialized) {
  cal_init = pi->pi_fptr.calinit;
  if (cal_init)
   (*cal_init)(pi);

  pi->initialized = 1;
 }
}
