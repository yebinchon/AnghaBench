
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_intr {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int int_credits; int mask_on_assertion; int coalescing_type; int coalescing_timer; } ;


 int iowrite32 (unsigned int,int *) ;

void vnic_intr_init(struct vnic_intr *intr, unsigned int coalescing_timer,
 unsigned int coalescing_type, unsigned int mask_on_assertion)
{
 iowrite32(coalescing_timer, &intr->ctrl->coalescing_timer);
 iowrite32(coalescing_type, &intr->ctrl->coalescing_type);
 iowrite32(mask_on_assertion, &intr->ctrl->mask_on_assertion);
 iowrite32(0, &intr->ctrl->int_credits);
}
