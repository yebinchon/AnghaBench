
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int used; } ;
struct be_mcc_obj {TYPE_1__ q; } ;
struct be_adapter {int fw_timeout; TYPE_2__* pdev; struct be_mcc_obj mcc_obj; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ be_error (struct be_adapter*) ;
 int be_process_mcc (struct be_adapter*) ;
 int dev_err (int *,char*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int mcc_timeout ;
 int udelay (int) ;

__attribute__((used)) static int be_mcc_wait_compl(struct be_adapter *adapter)
{

 int i, status = 0;
 struct be_mcc_obj *mcc_obj = &adapter->mcc_obj;

 for (i = 0; i < 120000; i++) {
  if (be_error(adapter))
   return -EIO;

  local_bh_disable();
  status = be_process_mcc(adapter);
  local_bh_enable();

  if (atomic_read(&mcc_obj->q.used) == 0)
   break;
  udelay(100);
 }
 if (i == 120000) {
  dev_err(&adapter->pdev->dev, "FW not responding\n");
  adapter->fw_timeout = 1;
  return -EIO;
 }
 return status;
}
