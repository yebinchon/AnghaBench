
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_device_modify {int node_desc; } ;
struct ib_device {int node_desc; } ;
struct TYPE_2__ {int cap_mask_mutex; } ;


 int EOPNOTSUPP ;
 int ERESTARTSYS ;
 int IB_DEVICE_MODIFY_NODE_DESC ;
 int memcpy (int ,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mthca_modify_device(struct ib_device *ibdev,
          int mask,
          struct ib_device_modify *props)
{
 if (mask & ~IB_DEVICE_MODIFY_NODE_DESC)
  return -EOPNOTSUPP;

 if (mask & IB_DEVICE_MODIFY_NODE_DESC) {
  if (mutex_lock_interruptible(&to_mdev(ibdev)->cap_mask_mutex))
   return -ERESTARTSYS;
  memcpy(ibdev->node_desc, props->node_desc, 64);
  mutex_unlock(&to_mdev(ibdev)->cap_mask_mutex);
 }

 return 0;
}
