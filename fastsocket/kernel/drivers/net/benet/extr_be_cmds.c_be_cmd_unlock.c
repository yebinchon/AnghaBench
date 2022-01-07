
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int mbox_lock; int mcc_lock; } ;


 void mutex_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ use_mcc (struct be_adapter*) ;

__attribute__((used)) static void be_cmd_unlock(struct be_adapter *adapter)
{
 if (use_mcc(adapter))
  spin_unlock_bh(&adapter->mcc_lock);
 else
  return mutex_unlock(&adapter->mbox_lock);
}
