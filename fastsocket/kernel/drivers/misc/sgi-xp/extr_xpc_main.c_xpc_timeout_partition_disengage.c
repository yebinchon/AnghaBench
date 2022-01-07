
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_partition {scalar_t__ disengage_timeout; } ;
struct TYPE_2__ {int (* partition_engaged ) (int ) ;} ;


 int DBUG_ON (int) ;
 int XPC_PARTID (struct xpc_partition*) ;
 int stub1 (int ) ;
 int time_is_after_jiffies (scalar_t__) ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_partition_disengaged (struct xpc_partition*) ;

__attribute__((used)) static void
xpc_timeout_partition_disengage(unsigned long data)
{
 struct xpc_partition *part = (struct xpc_partition *)data;

 DBUG_ON(time_is_after_jiffies(part->disengage_timeout));

 (void)xpc_partition_disengaged(part);

 DBUG_ON(part->disengage_timeout != 0);
 DBUG_ON(xpc_arch_ops.partition_engaged(XPC_PARTID(part)));
}
