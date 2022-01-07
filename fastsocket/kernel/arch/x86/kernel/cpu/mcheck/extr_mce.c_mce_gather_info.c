
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cs; void* ip; } ;
struct mce {int mcgstatus; void* ip; int cs; } ;


 int MCG_STATUS_EIPV ;
 int MCG_STATUS_RIPV ;
 scalar_t__ MSR_IA32_MCG_STATUS ;
 void* mce_rdmsrl (scalar_t__) ;
 int mce_setup (struct mce*) ;
 scalar_t__ rip_msr ;

__attribute__((used)) static inline void mce_gather_info(struct mce *m, struct pt_regs *regs)
{
 mce_setup(m);

 m->mcgstatus = mce_rdmsrl(MSR_IA32_MCG_STATUS);
 if (regs) {




  if (m->mcgstatus & (MCG_STATUS_RIPV|MCG_STATUS_EIPV)) {
   m->ip = regs->ip;
   m->cs = regs->cs;
  }

  if (rip_msr)
   m->ip = mce_rdmsrl(rip_msr);
 }
}
