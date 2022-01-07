
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int pci_irqmask; struct cx88_IR* ir; } ;
struct cx88_IR {int timer; scalar_t__ polling; scalar_t__ sampling; } ;


 int MO_DDSCFG_IO ;
 int PCI_INT_IR_SMPINT ;
 int cx_write (int ,int) ;
 int hrtimer_cancel (int *) ;

__attribute__((used)) static void __cx88_ir_stop(void *priv)
{
 struct cx88_core *core = priv;
 struct cx88_IR *ir;

 if (!core || !core->ir)
  return;

 ir = core->ir;
 if (ir->sampling) {
  cx_write(MO_DDSCFG_IO, 0x0);
  core->pci_irqmask &= ~PCI_INT_IR_SMPINT;
 }

 if (ir->polling)
  hrtimer_cancel(&ir->timer);
}
