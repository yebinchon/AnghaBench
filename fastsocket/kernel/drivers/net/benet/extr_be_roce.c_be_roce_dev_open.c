
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int dummy; } ;


 int _be_roce_dev_open (struct be_adapter*) ;
 int be_adapter_list_lock ;
 scalar_t__ be_roce_supported (struct be_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void be_roce_dev_open(struct be_adapter *adapter)
{
 if (be_roce_supported(adapter)) {
  mutex_lock(&be_adapter_list_lock);
  _be_roce_dev_open(adapter);
  mutex_unlock(&be_adapter_list_lock);
 }
}
