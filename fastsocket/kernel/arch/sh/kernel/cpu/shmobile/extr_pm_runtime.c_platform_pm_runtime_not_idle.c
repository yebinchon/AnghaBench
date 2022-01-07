
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int entry; } ;
struct platform_device {TYPE_1__ archdata; } ;


 int PDEV_ARCHDATA_FLAG_IDLE ;
 int __clear_bit (int ,int *) ;
 int hwblk_lock ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void platform_pm_runtime_not_idle(struct platform_device *pdev)
{
 unsigned long flags;


 spin_lock_irqsave(&hwblk_lock, flags);
 if (test_bit(PDEV_ARCHDATA_FLAG_IDLE, &pdev->archdata.flags)) {
  list_del(&pdev->archdata.entry);
  __clear_bit(PDEV_ARCHDATA_FLAG_IDLE, &pdev->archdata.flags);
 }
 spin_unlock_irqrestore(&hwblk_lock, flags);
}
