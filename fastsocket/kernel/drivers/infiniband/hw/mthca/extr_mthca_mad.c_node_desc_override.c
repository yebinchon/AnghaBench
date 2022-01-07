
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_smp {int data; } ;
struct TYPE_3__ {scalar_t__ mgmt_class; scalar_t__ method; scalar_t__ attr_id; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct ib_device {int node_desc; } ;
struct TYPE_4__ {int cap_mask_mutex; } ;


 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 scalar_t__ IB_MGMT_METHOD_GET_RESP ;
 scalar_t__ IB_SMP_ATTR_NODE_DESC ;
 int memcpy (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* to_mdev (struct ib_device*) ;

__attribute__((used)) static void node_desc_override(struct ib_device *dev,
          struct ib_mad *mad)
{
 if ((mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED ||
      mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) &&
     mad->mad_hdr.method == IB_MGMT_METHOD_GET_RESP &&
     mad->mad_hdr.attr_id == IB_SMP_ATTR_NODE_DESC) {
  mutex_lock(&to_mdev(dev)->cap_mask_mutex);
  memcpy(((struct ib_smp *) mad)->data, dev->node_desc, 64);
  mutex_unlock(&to_mdev(dev)->cap_mask_mutex);
 }
}
