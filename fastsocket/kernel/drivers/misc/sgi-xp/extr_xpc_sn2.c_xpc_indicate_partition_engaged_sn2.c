
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {scalar_t__ remote_amos_page_pa; } ;
struct TYPE_4__ {TYPE_1__ sn2; } ;
struct xpc_partition {TYPE_2__ sn; } ;
struct amo {int variable; } ;


 int BIT (int ) ;
 int FETCHOP_OR ;
 int FETCHOP_STORE_OP (int ,int ,int ) ;
 scalar_t__ GLOBAL_MMR_ADDR (int ,int ) ;
 int NASID_GET (int *) ;
 int TO_AMO (int ) ;
 int XPC_ENGAGED_PARTITIONS_AMO_SN2 ;
 scalar_t__ __va (scalar_t__) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sn_partition_id ;
 int xp_nofault_PIOR (int *) ;
 int xp_nofault_PIOR_target ;

__attribute__((used)) static void
xpc_indicate_partition_engaged_sn2(struct xpc_partition *part)
{
 unsigned long irq_flags;
 struct amo *amo = (struct amo *)__va(part->sn.sn2.remote_amos_page_pa +
          (XPC_ENGAGED_PARTITIONS_AMO_SN2 *
          sizeof(struct amo)));

 local_irq_save(irq_flags);


 FETCHOP_STORE_OP(TO_AMO((u64)&amo->variable), FETCHOP_OR,
    BIT(sn_partition_id));







 (void)xp_nofault_PIOR((u64 *)GLOBAL_MMR_ADDR(NASID_GET(&amo->
              variable),
           xp_nofault_PIOR_target));

 local_irq_restore(irq_flags);
}
