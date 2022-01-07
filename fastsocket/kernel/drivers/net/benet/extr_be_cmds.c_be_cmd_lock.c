
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int mbox_lock; int mcc_lock; } ;


 int mutex_lock_interruptible (int *) ;
 int spin_lock_bh (int *) ;
 scalar_t__ use_mcc (struct be_adapter*) ;

__attribute__((used)) static int be_cmd_lock(struct be_adapter *adapter)
{
 if (use_mcc(adapter)) {
  spin_lock_bh(&adapter->mcc_lock);
  return 0;
 } else {
  return mutex_lock_interruptible(&adapter->mbox_lock);
 }
}
