
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int bf_preempt_4306; } ;



void wlc_phy_bf_preempt_enable(struct brcms_phy_pub *pih, bool bf_preempt)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 pi->bf_preempt_4306 = bf_preempt;
}
