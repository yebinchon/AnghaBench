
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct amo {int variable; } ;
struct TYPE_2__ {struct amo* amos_page; } ;


 int BIT (short) ;
 int FETCHOP_LOAD ;
 int FETCHOP_LOAD_OP (int ,int ) ;
 int TO_AMO (int ) ;
 int XPC_DEACTIVATE_REQUEST_AMO_SN2 ;
 TYPE_1__* xpc_vars_sn2 ;

__attribute__((used)) static int
xpc_partition_deactivation_requested_sn2(short partid)
{
 struct amo *amo = xpc_vars_sn2->amos_page +
     XPC_DEACTIVATE_REQUEST_AMO_SN2;


 return (FETCHOP_LOAD_OP(TO_AMO((u64)&amo->variable), FETCHOP_LOAD) &
  BIT(partid)) != 0;
}
