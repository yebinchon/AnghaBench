
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amo {int variable; } ;


 int FETCHOP_CLEAR ;
 int FETCHOP_LOAD_OP (int ,int ) ;
 int TO_AMO (int ) ;

__attribute__((used)) static u64
xpc_receive_IRQ_amo_sn2(struct amo *amo)
{
 return FETCHOP_LOAD_OP(TO_AMO((u64)&amo->variable), FETCHOP_CLEAR);
}
