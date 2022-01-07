
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int QLCNIC_ROM_LOCK_ID ;
 int dev_info (int *,char*) ;
 scalar_t__ qlcnic_pcie_sem_lock (struct qlcnic_adapter*,int,int ) ;
 int qlcnic_pcie_sem_unlock (struct qlcnic_adapter*,int) ;

__attribute__((used)) static void qlcnic_rom_lock_recovery(struct qlcnic_adapter *adapter)
{
 if (qlcnic_pcie_sem_lock(adapter, 2, QLCNIC_ROM_LOCK_ID))
  dev_info(&adapter->pdev->dev, "Resetting rom_lock\n");

 qlcnic_pcie_sem_unlock(adapter, 2);
}
