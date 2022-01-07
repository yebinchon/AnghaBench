
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int NPTCG_FROM_KERNEL_PARAMETER ;
 int NPTCG_FROM_PAL ;
 int NPTCG_FROM_PALO ;
 int PALO_MAX_TLB_PURGES ;
 int PAL_MAX_PURGES ;
 int need_ptcg_sem ;
 int nptcg ;
 int num_possible_cpus () ;
 int panic (char*) ;
 int ptcg_sem ;
 int spinaphore_init (int *,int) ;
 scalar_t__ toolatetochangeptcgsem ;

void
setup_ptcg_sem(int max_purges, int nptcg_from)
{
 static int kp_override;
 static int palo_override;
 static int firstcpu = 1;

 if (toolatetochangeptcgsem) {
  if (nptcg_from == NPTCG_FROM_PAL && max_purges == 0)
   BUG_ON(1 < nptcg);
  else
   BUG_ON(max_purges < nptcg);
  return;
 }

 if (nptcg_from == NPTCG_FROM_KERNEL_PARAMETER) {
  kp_override = 1;
  nptcg = max_purges;
  goto resetsema;
 }
 if (kp_override) {
  need_ptcg_sem = num_possible_cpus() > nptcg;
  return;
 }

 if (nptcg_from == NPTCG_FROM_PALO) {
  palo_override = 1;


  if (max_purges == 0)
   panic("Whoa! Platform does not support global TLB purges.\n");
  nptcg = max_purges;
  if (nptcg == PALO_MAX_TLB_PURGES) {
   need_ptcg_sem = 0;
   return;
  }
  goto resetsema;
 }
 if (palo_override) {
  if (nptcg != PALO_MAX_TLB_PURGES)
   need_ptcg_sem = (num_possible_cpus() > nptcg);
  return;
 }


 if (max_purges == 0) max_purges = 1;

 if (firstcpu) {
  nptcg = max_purges;
  firstcpu = 0;
 }
 if (max_purges < nptcg)
  nptcg = max_purges;
 if (nptcg == PAL_MAX_PURGES) {
  need_ptcg_sem = 0;
  return;
 } else
  need_ptcg_sem = (num_possible_cpus() > nptcg);

resetsema:
 spinaphore_init(&ptcg_sem, max_purges);
}
