
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int (* init ) (TYPE_1__*) ;} ;
struct fritzcard {scalar_t__ type; int irq; int name; int irqcnt; int lock; TYPE_1__ isac; } ;


 scalar_t__ AVM_FRITZ_PCIV2 ;
 int DEBUG_HW ;
 int EIO ;
 int IRQF_SHARED ;
 int ISACX_CMDRD ;
 int ISACX_MASK ;
 int ISAC_CMDR ;
 int ISAC_MASK ;
 int WriteISAC_V1 (struct fritzcard*,int ,int) ;
 int WriteISAC_V2 (struct fritzcard*,int ,int) ;
 int avm_fritz_interrupt ;
 int avm_fritzv2_interrupt ;
 int clear_pending_hdlc_ints (struct fritzcard*) ;
 int debug ;
 int enable_hwirq (struct fritzcard*) ;
 int free_irq (int ,struct fritzcard*) ;
 int inithdlc (struct fritzcard*) ;
 int msleep_interruptible (int) ;
 int pr_info (char*,int ,int,...) ;
 int pr_notice (char*,int ,int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct fritzcard*) ;
 int reset_avm (struct fritzcard*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int
init_card(struct fritzcard *fc)
{
 int ret, cnt = 3;
 u_long flags;

 reset_avm(fc);
 if (fc->type == AVM_FRITZ_PCIV2)
  ret = request_irq(fc->irq, avm_fritzv2_interrupt,
   IRQF_SHARED, fc->name, fc);
 else
  ret = request_irq(fc->irq, avm_fritz_interrupt,
   IRQF_SHARED, fc->name, fc);
 if (ret) {
  pr_info("%s: couldn't get interrupt %d\n",
   fc->name, fc->irq);
  return ret;
 }
 while (cnt--) {
  spin_lock_irqsave(&fc->lock, flags);
  ret = fc->isac.init(&fc->isac);
  if (ret) {
   spin_unlock_irqrestore(&fc->lock, flags);
   pr_info("%s: ISAC init failed with %d\n",
    fc->name, ret);
   break;
  }
  clear_pending_hdlc_ints(fc);
  inithdlc(fc);
  enable_hwirq(fc);

  if (AVM_FRITZ_PCIV2 == fc->type) {
   WriteISAC_V2(fc, ISACX_MASK, 0);
   WriteISAC_V2(fc, ISACX_CMDRD, 0x41);
  } else {
   WriteISAC_V1(fc, ISAC_MASK, 0);
   WriteISAC_V1(fc, ISAC_CMDR, 0x41);
  }
  spin_unlock_irqrestore(&fc->lock, flags);

  msleep_interruptible(10);
  if (debug & DEBUG_HW)
   pr_notice("%s: IRQ %d count %d\n", fc->name,
    fc->irq, fc->irqcnt);
  if (!fc->irqcnt) {
   pr_info("%s: IRQ(%d) getting no IRQs during init %d\n",
    fc->name, fc->irq, 3 - cnt);
   reset_avm(fc);
  } else
   return 0;
 }
 free_irq(fc->irq, fc);
 return -EIO;
}
