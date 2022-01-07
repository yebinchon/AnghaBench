
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int entry; } ;


 int INIT_LIST_HEAD (int *) ;
 int _be_roce_dev_add (struct be_adapter*) ;
 int be_adapter_list ;
 int be_adapter_list_lock ;
 scalar_t__ be_roce_supported (struct be_adapter*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void be_roce_dev_add(struct be_adapter *adapter)
{
 if (be_roce_supported(adapter)) {
  INIT_LIST_HEAD(&adapter->entry);
  mutex_lock(&be_adapter_list_lock);
  list_add_tail(&adapter->entry, &be_adapter_list);





  _be_roce_dev_add(adapter);
  mutex_unlock(&be_adapter_list_lock);
 }
}
