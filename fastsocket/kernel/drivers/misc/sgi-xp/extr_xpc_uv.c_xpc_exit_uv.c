
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xpc_activate_mq_uv ;
 int xpc_destroy_gru_mq_uv (int ) ;
 int xpc_notify_mq_uv ;

void
xpc_exit_uv(void)
{
 xpc_destroy_gru_mq_uv(xpc_notify_mq_uv);
 xpc_destroy_gru_mq_uv(xpc_activate_mq_uv);
}
