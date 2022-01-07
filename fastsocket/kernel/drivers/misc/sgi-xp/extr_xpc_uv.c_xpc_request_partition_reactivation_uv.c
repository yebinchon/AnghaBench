
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {int dummy; } ;


 int XPC_P_ASR_ACTIVATE_UV ;
 int xpc_send_local_activate_IRQ_uv (struct xpc_partition*,int ) ;

__attribute__((used)) static void
xpc_request_partition_reactivation_uv(struct xpc_partition *part)
{
 xpc_send_local_activate_IRQ_uv(part, XPC_P_ASR_ACTIVATE_UV);
}
