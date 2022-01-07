
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int PHYSDEV_CONTROL_DD_MASK ;
 int PHYSDEV_CONTROL_FW_RESET_MASK ;
 int dev_err (int *,char*) ;
 int dump_present (struct be_adapter*) ;
 int lancer_physdev_ctrl (struct be_adapter*,int) ;
 int lancer_wait_idle (struct be_adapter*) ;

int lancer_initiate_dump(struct be_adapter *adapter)
{
 int status;


 status = lancer_physdev_ctrl(adapter, PHYSDEV_CONTROL_FW_RESET_MASK |
         PHYSDEV_CONTROL_DD_MASK);
 if (status < 0) {
  dev_err(&adapter->pdev->dev, "Firmware reset failed\n");
  return status;
 }

 status = lancer_wait_idle(adapter);
 if (status)
  return status;

 if (!dump_present(adapter)) {
  dev_err(&adapter->pdev->dev, "Dump image not present\n");
  return -1;
 }

 return 0;
}
