
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct xpc_partition_sn2 {int * local_chctl_amo_va; int * local_GPs; int local_GPs_base; int * remote_GPs; int remote_GPs_base; int * local_openclose_args; int local_openclose_args_base; int dropped_notify_IRQ_timer; } ;
struct TYPE_3__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {TYPE_1__ sn; } ;
struct TYPE_4__ {scalar_t__ magic; } ;


 int SGI_XPC_NOTIFY ;
 short XPC_PARTID (struct xpc_partition*) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,void*) ;
 int kfree (int ) ;
 TYPE_2__* xpc_vars_part_sn2 ;

__attribute__((used)) static void
xpc_teardown_ch_structures_sn2(struct xpc_partition *part)
{
 struct xpc_partition_sn2 *part_sn2 = &part->sn.sn2;
 short partid = XPC_PARTID(part);





 xpc_vars_part_sn2[partid].magic = 0;


 del_timer_sync(&part_sn2->dropped_notify_IRQ_timer);
 free_irq(SGI_XPC_NOTIFY, (void *)(u64)partid);

 kfree(part_sn2->local_openclose_args_base);
 part_sn2->local_openclose_args = ((void*)0);
 kfree(part_sn2->remote_GPs_base);
 part_sn2->remote_GPs = ((void*)0);
 kfree(part_sn2->local_GPs_base);
 part_sn2->local_GPs = ((void*)0);
 part_sn2->local_chctl_amo_va = ((void*)0);
}
