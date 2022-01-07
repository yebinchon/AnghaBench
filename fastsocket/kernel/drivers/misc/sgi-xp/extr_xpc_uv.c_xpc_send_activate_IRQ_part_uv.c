
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {int dummy; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int XPC_DEACTIVATE_PARTITION (struct xpc_partition*,int) ;
 scalar_t__ unlikely (int) ;
 int xpSuccess ;
 int xpc_send_activate_IRQ_uv (struct xpc_partition*,void*,size_t,int) ;

__attribute__((used)) static void
xpc_send_activate_IRQ_part_uv(struct xpc_partition *part, void *msg,
         size_t msg_size, int msg_type)
{
 enum xp_retval ret;

 ret = xpc_send_activate_IRQ_uv(part, msg, msg_size, msg_type);
 if (unlikely(ret != xpSuccess))
  XPC_DEACTIVATE_PARTITION(part, ret);
}
