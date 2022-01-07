
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rc_dev {int dummy; } ;
struct TYPE_2__ {int have_command; int ir_key; int rc5_device; struct rc_dev* dev; } ;
struct budget_ci {TYPE_1__ ir; int budget; } ;


 int DEBIADDR_IR ;
 int DEBINOSWAP ;
 int IR_DEVICE_ANY ;
 scalar_t__ ir_debug ;
 int printk (char*,int) ;
 int rc_keydown (struct rc_dev*,int,int) ;
 int ttpci_budget_debiread (int *,int ,int ,int,int,int ) ;

__attribute__((used)) static void msp430_ir_interrupt(unsigned long data)
{
 struct budget_ci *budget_ci = (struct budget_ci *) data;
 struct rc_dev *dev = budget_ci->ir.dev;
 u32 command = ttpci_budget_debiread(&budget_ci->budget, DEBINOSWAP, DEBIADDR_IR, 2, 1, 0) >> 8;
 if (ir_debug)
  printk("budget_ci: received byte 0x%02x\n", command);


 command = command & 0x7f;


 if (command & 0x40) {
  budget_ci->ir.have_command = 1;
  budget_ci->ir.ir_key = command & 0x3f;
  return;
 }


 if (!budget_ci->ir.have_command)
  return;
 budget_ci->ir.have_command = 0;


 if (budget_ci->ir.rc5_device != IR_DEVICE_ANY &&
     budget_ci->ir.rc5_device != (command & 0x1f))
  return;

 rc_keydown(dev, budget_ci->ir.ir_key, (command & 0x20) ? 1 : 0);
}
