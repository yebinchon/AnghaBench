
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xpc_partition_sn2 {int activate_IRQ_phys_cpuid; int activate_IRQ_nasid; scalar_t__ remote_amos_page_pa; } ;
struct TYPE_2__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {TYPE_1__ sn; } ;
struct amo {int variable; } ;


 int BIT (int ) ;
 int FETCHOP_OR ;
 int FETCHOP_STORE_OP (int ,int ,int ) ;
 scalar_t__ GLOBAL_MMR_ADDR (int ,int ) ;
 int NASID_GET (int *) ;
 int TO_AMO (int ) ;
 int XPC_DEACTIVATE_REQUEST_AMO_SN2 ;
 scalar_t__ __va (scalar_t__) ;
 int cnodeid_to_nasid (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sn_partition_id ;
 int xp_nofault_PIOR (int *) ;
 int xp_nofault_PIOR_target ;
 int xpc_send_activate_IRQ_sn2 (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void
xpc_request_partition_deactivation_sn2(struct xpc_partition *part)
{
 struct xpc_partition_sn2 *part_sn2 = &part->sn.sn2;
 unsigned long irq_flags;
 struct amo *amo = (struct amo *)__va(part_sn2->remote_amos_page_pa +
          (XPC_DEACTIVATE_REQUEST_AMO_SN2 *
          sizeof(struct amo)));

 local_irq_save(irq_flags);


 FETCHOP_STORE_OP(TO_AMO((u64)&amo->variable), FETCHOP_OR,
    BIT(sn_partition_id));







 (void)xp_nofault_PIOR((u64 *)GLOBAL_MMR_ADDR(NASID_GET(&amo->
              variable),
           xp_nofault_PIOR_target));

 local_irq_restore(irq_flags);





 xpc_send_activate_IRQ_sn2(part_sn2->remote_amos_page_pa,
      cnodeid_to_nasid(0),
      part_sn2->activate_IRQ_nasid,
      part_sn2->activate_IRQ_phys_cpuid);
}
