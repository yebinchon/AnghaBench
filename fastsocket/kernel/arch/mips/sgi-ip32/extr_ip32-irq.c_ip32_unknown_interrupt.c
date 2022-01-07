
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int hard_int; int istat; int imask; } ;
struct TYPE_6__ {int control; } ;
struct TYPE_8__ {int istat; int imask; } ;
struct TYPE_7__ {TYPE_3__ ctrl; } ;
struct TYPE_9__ {TYPE_1__ pci; TYPE_2__ perif; } ;


 TYPE_5__* crime ;
 int get_irq_regs () ;
 TYPE_4__* mace ;
 int printk (char*,...) ;
 int read_c0_cause () ;
 int read_c0_status () ;
 int show_regs (int ) ;

__attribute__((used)) static void ip32_unknown_interrupt(void)
{
 printk("Unknown interrupt occurred!\n");
 printk("cp0_status: %08x\n", read_c0_status());
 printk("cp0_cause: %08x\n", read_c0_cause());
 printk("CRIME intr mask: %016lx\n", crime->imask);
 printk("CRIME intr status: %016lx\n", crime->istat);
 printk("CRIME hardware intr register: %016lx\n", crime->hard_int);
 printk("MACE ISA intr mask: %08lx\n", mace->perif.ctrl.imask);
 printk("MACE ISA intr status: %08lx\n", mace->perif.ctrl.istat);
 printk("MACE PCI control register: %08x\n", mace->pci.control);

 printk("Register dump:\n");
 show_regs(get_irq_regs());

 printk("Please mail this report to linux-mips@linux-mips.org\n");
 printk("Spinning...");
 while(1) ;
}
