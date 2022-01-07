
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int rcu; int entry; int ibdev; } ;


 int call_rcu (int *,int ) ;
 int ib_unregister_device (int *) ;
 int list_del_rcu (int *) ;
 int ocrdma_devlist_lock ;
 int ocrdma_remove_free ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocrdma_remove(struct ocrdma_dev *dev)
{



 ib_unregister_device(&dev->ibdev);

 spin_lock(&ocrdma_devlist_lock);
 list_del_rcu(&dev->entry);
 spin_unlock(&ocrdma_devlist_lock);
 call_rcu(&dev->rcu, ocrdma_remove_free);
}
