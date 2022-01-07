
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long get_mc_reason (struct pt_regs*) ;
 int printk (char*,...) ;

int machine_check_generic(struct pt_regs *regs)
{
 unsigned long reason = get_mc_reason(regs);

 printk("Machine check in kernel mode.\n");
 printk("Caused by (from SRR1=%lx): ", reason);
 switch (reason & 0x601F0000) {
 case 0x80000:
  printk("Machine check signal\n");
  break;
 case 0:
 case 0x40000:
 case 0x140000:
  printk("Transfer error ack signal\n");
  break;
 case 0x20000:
  printk("Data parity error signal\n");
  break;
 case 0x10000:
  printk("Address parity error signal\n");
  break;
 case 0x20000000:
  printk("L1 Data Cache error\n");
  break;
 case 0x40000000:
  printk("L1 Instruction Cache error\n");
  break;
 case 0x00100000:
  printk("L2 data cache parity error\n");
  break;
 default:
  printk("Unknown values in msr\n");
 }
 return 0;
}
