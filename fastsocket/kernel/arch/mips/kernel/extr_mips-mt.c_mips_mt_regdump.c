
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MVPCONF0_PTC ;
 unsigned long MVPCONF0_PTC_SHIFT ;
 unsigned long MVPCONF0_PVPE ;
 unsigned long MVPCONF0_PVPE_SHIFT ;
 int TCBIND_CURVPE ;
 unsigned long dvpe () ;
 int evpe (unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,...) ;
 unsigned long read_c0_mvpconf0 () ;
 int read_c0_tcbind () ;
 int read_tc_c0_tcbind () ;
 int read_tc_c0_tccontext () ;
 unsigned long read_tc_c0_tchalt () ;
 scalar_t__ read_tc_c0_tcrestart () ;
 unsigned long read_tc_c0_tcstatus () ;
 int read_vpe_c0_cause () ;
 int read_vpe_c0_config7 () ;
 scalar_t__ read_vpe_c0_epc () ;
 int read_vpe_c0_status () ;
 int read_vpe_c0_vpeconf0 () ;
 int read_vpe_c0_vpecontrol () ;
 int settc (int) ;
 int write_tc_c0_tchalt (int) ;

void mips_mt_regdump(unsigned long mvpctl)
{
 unsigned long flags;
 unsigned long vpflags;
 unsigned long mvpconf0;
 int nvpe;
 int ntc;
 int i;
 int tc;
 unsigned long haltval;
 unsigned long tcstatval;




 local_irq_save(flags);
 vpflags = dvpe();
 printk("=== MIPS MT State Dump ===\n");
 printk("-- Global State --\n");
 printk("   MVPControl Passed: %08lx\n", mvpctl);
 printk("   MVPControl Read: %08lx\n", vpflags);
 printk("   MVPConf0 : %08lx\n", (mvpconf0 = read_c0_mvpconf0()));
 nvpe = ((mvpconf0 & MVPCONF0_PVPE) >> MVPCONF0_PVPE_SHIFT) + 1;
 ntc = ((mvpconf0 & MVPCONF0_PTC) >> MVPCONF0_PTC_SHIFT) + 1;
 printk("-- per-VPE State --\n");
 for (i = 0; i < nvpe; i++) {
  for (tc = 0; tc < ntc; tc++) {
   settc(tc);
   if ((read_tc_c0_tcbind() & TCBIND_CURVPE) == i) {
    printk("  VPE %d\n", i);
    printk("   VPEControl : %08lx\n",
           read_vpe_c0_vpecontrol());
    printk("   VPEConf0 : %08lx\n",
           read_vpe_c0_vpeconf0());
    printk("   VPE%d.Status : %08lx\n",
           i, read_vpe_c0_status());
    printk("   VPE%d.EPC : %08lx %pS\n",
           i, read_vpe_c0_epc(),
           (void *) read_vpe_c0_epc());
    printk("   VPE%d.Cause : %08lx\n",
           i, read_vpe_c0_cause());
    printk("   VPE%d.Config7 : %08lx\n",
           i, read_vpe_c0_config7());
    break;
   }
  }
 }
 printk("-- per-TC State --\n");
 for (tc = 0; tc < ntc; tc++) {
  settc(tc);
  if (read_tc_c0_tcbind() == read_c0_tcbind()) {

   haltval = 0;
   tcstatval = flags;
   printk("  TC %d (current TC with VPE EPC above)\n", tc);
  } else {
   haltval = read_tc_c0_tchalt();
   write_tc_c0_tchalt(1);
   tcstatval = read_tc_c0_tcstatus();
   printk("  TC %d\n", tc);
  }
  printk("   TCStatus : %08lx\n", tcstatval);
  printk("   TCBind : %08lx\n", read_tc_c0_tcbind());
  printk("   TCRestart : %08lx %pS\n",
         read_tc_c0_tcrestart(), (void *) read_tc_c0_tcrestart());
  printk("   TCHalt : %08lx\n", haltval);
  printk("   TCContext : %08lx\n", read_tc_c0_tccontext());
  if (!haltval)
   write_tc_c0_tchalt(0);
 }



 printk("===========================\n");
 evpe(vpflags);
 local_irq_restore(flags);
}
