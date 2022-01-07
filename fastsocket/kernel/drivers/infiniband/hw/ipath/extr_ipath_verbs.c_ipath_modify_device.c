
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_device_modify {int sys_image_guid; int node_desc; } ;
struct ib_device {int node_desc; } ;
struct TYPE_2__ {int sys_image_guid; } ;


 int EOPNOTSUPP ;
 int IB_DEVICE_MODIFY_NODE_DESC ;
 int IB_DEVICE_MODIFY_SYS_IMAGE_GUID ;
 int cpu_to_be64 (int ) ;
 int memcpy (int ,int ,int) ;
 TYPE_1__* to_idev (struct ib_device*) ;

__attribute__((used)) static int ipath_modify_device(struct ib_device *device,
          int device_modify_mask,
          struct ib_device_modify *device_modify)
{
 int ret;

 if (device_modify_mask & ~(IB_DEVICE_MODIFY_SYS_IMAGE_GUID |
       IB_DEVICE_MODIFY_NODE_DESC)) {
  ret = -EOPNOTSUPP;
  goto bail;
 }

 if (device_modify_mask & IB_DEVICE_MODIFY_NODE_DESC)
  memcpy(device->node_desc, device_modify->node_desc, 64);

 if (device_modify_mask & IB_DEVICE_MODIFY_SYS_IMAGE_GUID)
  to_idev(device)->sys_image_guid =
   cpu_to_be64(device_modify->sys_image_guid);

 ret = 0;

bail:
 return ret;
}
