
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox {int dummy; } ;


 int AUTOIDLE ;
 int ENODEV ;
 int IRQ_RX ;
 scalar_t__ IS_ERR (int ) ;
 int MAILBOX_REVISION ;
 int MAILBOX_SYSCONFIG ;
 int MAILBOX_SYSSTATUS ;
 int RESETDONE ;
 int SMARTIDLE ;
 int SOFTRESET ;
 int clk_enable (int ) ;
 int clk_get (int *,char*) ;
 unsigned long jiffies ;
 int mbox_ick_handle ;
 int mbox_read_reg (int ) ;
 int mbox_write_reg (int,int ) ;
 unsigned long msecs_to_jiffies (int) ;
 int omap2_mbox_enable_irq (struct omap_mbox*,int ) ;
 int pr_err (char*) ;
 int pr_info (char*,int,int) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int omap2_mbox_startup(struct omap_mbox *mbox)
{
 u32 l;
 unsigned long timeout;

 mbox_ick_handle = clk_get(((void*)0), "mailboxes_ick");
 if (IS_ERR(mbox_ick_handle)) {
  pr_err("Can't get mailboxes_ick\n");
  return -ENODEV;
 }
 clk_enable(mbox_ick_handle);

 mbox_write_reg(SOFTRESET, MAILBOX_SYSCONFIG);
 timeout = jiffies + msecs_to_jiffies(20);
 do {
  l = mbox_read_reg(MAILBOX_SYSSTATUS);
  if (l & RESETDONE)
   break;
 } while (!time_after(jiffies, timeout));

 if (!(l & RESETDONE)) {
  pr_err("Can't take mmu out of reset\n");
  return -ENODEV;
 }

 l = mbox_read_reg(MAILBOX_REVISION);
 pr_info("omap mailbox rev %d.%d\n", (l & 0xf0) >> 4, (l & 0x0f));

 l = SMARTIDLE | AUTOIDLE;
 mbox_write_reg(l, MAILBOX_SYSCONFIG);

 omap2_mbox_enable_irq(mbox, IRQ_RX);

 return 0;
}
