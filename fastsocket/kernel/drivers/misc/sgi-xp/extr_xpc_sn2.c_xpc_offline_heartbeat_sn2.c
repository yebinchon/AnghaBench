
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int heartbeat_offline; } ;


 int xpc_increment_heartbeat_sn2 () ;
 TYPE_1__* xpc_vars_sn2 ;

__attribute__((used)) static void
xpc_offline_heartbeat_sn2(void)
{
 xpc_increment_heartbeat_sn2();
 xpc_vars_sn2->heartbeat_offline = 1;
}
