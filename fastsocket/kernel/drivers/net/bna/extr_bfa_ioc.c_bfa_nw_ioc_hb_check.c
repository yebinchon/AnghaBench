
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int heartbeat; } ;
struct bfa_ioc {scalar_t__ hb_count; int hb_timer; TYPE_1__ ioc_regs; } ;


 int BFA_IOC_HB_TOV ;
 int bfa_ioc_mbox_poll (struct bfa_ioc*) ;
 int bfa_ioc_recover (struct bfa_ioc*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ readl (int ) ;

void
bfa_nw_ioc_hb_check(void *cbarg)
{
 struct bfa_ioc *ioc = cbarg;
 u32 hb_count;

 hb_count = readl(ioc->ioc_regs.heartbeat);
 if (ioc->hb_count == hb_count) {
  bfa_ioc_recover(ioc);
  return;
 } else {
  ioc->hb_count = hb_count;
 }

 bfa_ioc_mbox_poll(ioc);
 mod_timer(&ioc->hb_timer, jiffies +
  msecs_to_jiffies(BFA_IOC_HB_TOV));
}
