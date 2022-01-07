
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int BCMCPU_IS_6348 () ;
 int CKCTL_6348_USBH_EN ;
 int bcm_hwclock_set (int ,int) ;

__attribute__((used)) static void usbh_set(struct clk *clk, int enable)
{
 if (!BCMCPU_IS_6348())
  return;
 bcm_hwclock_set(CKCTL_6348_USBH_EN, enable);
}
