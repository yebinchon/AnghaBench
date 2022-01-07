
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int heartbeating_to_mask; } ;


 int DBUG_ON (int ) ;
 int clear_bit (short,int ) ;
 TYPE_1__* xpc_vars_sn2 ;

__attribute__((used)) static void
xpc_disallow_hb_sn2(short partid)
{
 DBUG_ON(xpc_vars_sn2 == ((void*)0));
 clear_bit(partid, xpc_vars_sn2->heartbeating_to_mask);
}
