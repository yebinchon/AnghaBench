
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_struct {int sr; int nmi_sr; int cache_err; int badva; int cause; scalar_t__* gpr; scalar_t__ error_epc; scalar_t__ epc; } ;
typedef int nasid_t ;


 int IP27_NMI_KREGS_CPU_SIZE ;
 int IP27_NMI_KREGS_OFFSET ;



 int ST0_ERL ;
 int ST0_EXL ;
 int ST0_IE ;
 int ST0_KSU ;
 int ST0_KX ;
 int ST0_SX ;
 int ST0_UX ;
 int TO_NODE (int ,int ) ;
 scalar_t__ TO_UNCAC (int ) ;
 int print_tainted () ;
 int printk (char*,...) ;
 int read_c0_prid () ;

void nmi_cpu_eframe_save(nasid_t nasid, int slice)
{
 struct reg_struct *nr;
 int i;


 nr = (struct reg_struct *)
  (TO_UNCAC(TO_NODE(nasid, IP27_NMI_KREGS_OFFSET)) +
  slice * IP27_NMI_KREGS_CPU_SIZE);

 printk("NMI nasid %d: slice %d\n", nasid, slice);




 for (i = 0; i < 32; ) {
  if ((i % 4) == 0)
   printk("$%2d   :", i);
  printk(" %016lx", nr->gpr[i]);

  i++;
  if ((i % 4) == 0)
   printk("\n");
 }

 printk("Hi    : (value lost)\n");
 printk("Lo    : (value lost)\n");




 printk("epc   : %016lx %pS\n", nr->epc, (void *) nr->epc);
 printk("%s\n", print_tainted());
 printk("ErrEPC: %016lx %pS\n", nr->error_epc, (void *) nr->error_epc);
 printk("ra    : %016lx %pS\n", nr->gpr[31], (void *) nr->gpr[31]);
 printk("Status: %08lx         ", nr->sr);

 if (nr->sr & ST0_KX)
  printk("KX ");
 if (nr->sr & ST0_SX)
  printk("SX 	");
 if (nr->sr & ST0_UX)
  printk("UX ");

 switch (nr->sr & ST0_KSU) {
 case 128:
  printk("USER ");
  break;
 case 129:
  printk("SUPERVISOR ");
  break;
 case 130:
  printk("KERNEL ");
  break;
 default:
  printk("BAD_MODE ");
  break;
 }

 if (nr->sr & ST0_ERL)
  printk("ERL ");
 if (nr->sr & ST0_EXL)
  printk("EXL ");
 if (nr->sr & ST0_IE)
  printk("IE ");
 printk("\n");

 printk("Cause : %08lx\n", nr->cause);
 printk("PrId  : %08x\n", read_c0_prid());
 printk("BadVA : %016lx\n", nr->badva);
 printk("CErr  : %016lx\n", nr->cache_err);
 printk("NMI_SR: %016lx\n", nr->nmi_sr);

 printk("\n");
}
