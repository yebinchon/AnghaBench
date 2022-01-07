
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vnic_intr {TYPE_1__* ctrl; int vdev; } ;
struct TYPE_2__ {int coalescing_timer; } ;


 int iowrite32 (int ,int *) ;
 int vnic_dev_intr_coal_timer_usec_to_hw (int ,int ) ;

void vnic_intr_coalescing_timer_set(struct vnic_intr *intr,
 u32 coalescing_timer)
{
 iowrite32(vnic_dev_intr_coal_timer_usec_to_hw(intr->vdev,
  coalescing_timer), &intr->ctrl->coalescing_timer);
}
