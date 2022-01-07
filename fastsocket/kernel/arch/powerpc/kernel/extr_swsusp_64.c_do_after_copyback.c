
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iommu_restore () ;
 int mb () ;
 int touch_softlockup_watchdog () ;

void do_after_copyback(void)
{
 iommu_restore();
 touch_softlockup_watchdog();
 mb();
}
