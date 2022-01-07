
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int heartbeating_to_mask; } ;


 int DBUG_ON (int ) ;
 int XP_MAX_NPARTITIONS_SN2 ;
 int bitmap_zero (int ,int ) ;
 int xpc_online_heartbeat_sn2 () ;
 TYPE_1__* xpc_vars_sn2 ;

__attribute__((used)) static void
xpc_heartbeat_init_sn2(void)
{
 DBUG_ON(xpc_vars_sn2 == ((void*)0));

 bitmap_zero(xpc_vars_sn2->heartbeating_to_mask, XP_MAX_NPARTITIONS_SN2);
 xpc_online_heartbeat_sn2();
}
