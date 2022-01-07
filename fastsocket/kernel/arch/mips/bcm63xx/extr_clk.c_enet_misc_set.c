
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 scalar_t__ BCMCPU_IS_6338 () ;
 scalar_t__ BCMCPU_IS_6345 () ;
 scalar_t__ BCMCPU_IS_6348 () ;
 int CKCTL_6338_ENET_EN ;
 int CKCTL_6345_ENET_EN ;
 int CKCTL_6348_ENET_EN ;
 int CKCTL_6358_EMUSB_EN ;
 int bcm_hwclock_set (int ,int) ;

__attribute__((used)) static void enet_misc_set(struct clk *clk, int enable)
{
 u32 mask;

 if (BCMCPU_IS_6338())
  mask = CKCTL_6338_ENET_EN;
 else if (BCMCPU_IS_6345())
  mask = CKCTL_6345_ENET_EN;
 else if (BCMCPU_IS_6348())
  mask = CKCTL_6348_ENET_EN;
 else

  mask = CKCTL_6358_EMUSB_EN;
 bcm_hwclock_set(mask, enable);
}
