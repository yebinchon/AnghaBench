
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int GFP_KERNEL ;
 int dev_list_lock ;
 int ida_get_new (int *,int*) ;
 int ida_pre_get (int *,int ) ;
 int nvme_index_ida ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nvme_get_ns_idx(void)
{
 int index, error;

 do {
  if (!ida_pre_get(&nvme_index_ida, GFP_KERNEL))
   return -1;

  spin_lock(&dev_list_lock);
  error = ida_get_new(&nvme_index_ida, &index);
  spin_unlock(&dev_list_lock);
 } while (error == -EAGAIN);

 if (error)
  index = -1;
 return index;
}
