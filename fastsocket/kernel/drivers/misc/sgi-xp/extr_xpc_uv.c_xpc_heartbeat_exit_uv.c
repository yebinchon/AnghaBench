
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xpc_offline_heartbeat_uv () ;

__attribute__((used)) static void
xpc_heartbeat_exit_uv(void)
{
 xpc_offline_heartbeat_uv();
}
