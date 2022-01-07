
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amo {int variable; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int FETCHOP_OR ;
 int FETCHOP_STORE_OP (int ,int ,int ) ;
 scalar_t__ GLOBAL_MMR_ADDR (int ,int ) ;
 int NASID_GET (int *) ;
 int TO_AMO (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sn_send_IPI_phys (int,int,int,int ) ;
 int xpPioReadError ;
 int xpSuccess ;
 int xp_nofault_PIOR (int *) ;
 int xp_nofault_PIOR_target ;

__attribute__((used)) static enum xp_retval
xpc_send_IRQ_sn2(struct amo *amo, u64 flag, int nasid, int phys_cpuid,
   int vector)
{
 int ret = 0;
 unsigned long irq_flags;

 local_irq_save(irq_flags);

 FETCHOP_STORE_OP(TO_AMO((u64)&amo->variable), FETCHOP_OR, flag);
 sn_send_IPI_phys(nasid, phys_cpuid, vector, 0);







 ret = xp_nofault_PIOR((u64 *)GLOBAL_MMR_ADDR(NASID_GET(&amo->variable),
           xp_nofault_PIOR_target));

 local_irq_restore(irq_flags);

 return (ret == 0) ? xpSuccess : xpPioReadError;
}
