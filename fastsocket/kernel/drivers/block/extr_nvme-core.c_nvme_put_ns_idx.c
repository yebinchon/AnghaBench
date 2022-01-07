
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dev_list_lock ;
 int ida_remove (int *,int) ;
 int nvme_index_ida ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nvme_put_ns_idx(int index)
{
 spin_lock(&dev_list_lock);
 ida_remove(&nvme_index_ida, index);
 spin_unlock(&dev_list_lock);
}
