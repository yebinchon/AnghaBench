
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct xpc_partition_sn2 {TYPE_2__ dropped_notify_IRQ_timer; } ;
struct TYPE_3__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {TYPE_1__ sn; } ;


 scalar_t__ XPC_DROPPED_NOTIFY_IRQ_WAIT_INTERVAL ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int xpc_check_for_sent_chctl_flags_sn2 (struct xpc_partition*) ;
 int xpc_part_deref (struct xpc_partition*) ;
 scalar_t__ xpc_part_ref (struct xpc_partition*) ;

__attribute__((used)) static void
xpc_check_for_dropped_notify_IRQ_sn2(struct xpc_partition *part)
{
 struct xpc_partition_sn2 *part_sn2 = &part->sn.sn2;

 if (xpc_part_ref(part)) {
  xpc_check_for_sent_chctl_flags_sn2(part);

  part_sn2->dropped_notify_IRQ_timer.expires = jiffies +
      XPC_DROPPED_NOTIFY_IRQ_WAIT_INTERVAL;
  add_timer(&part_sn2->dropped_notify_IRQ_timer);
  xpc_part_deref(part);
 }
}
