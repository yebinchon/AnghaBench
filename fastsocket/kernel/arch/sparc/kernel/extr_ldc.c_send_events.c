
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event ) (int ,unsigned int) ;} ;
struct ldc_channel {int event_arg; TYPE_1__ cfg; } ;


 unsigned int LDC_EVENT_DATA_READY ;
 unsigned int LDC_EVENT_RESET ;
 unsigned int LDC_EVENT_UP ;
 int stub1 (int ,unsigned int) ;
 int stub2 (int ,unsigned int) ;
 int stub3 (int ,unsigned int) ;

__attribute__((used)) static void send_events(struct ldc_channel *lp, unsigned int event_mask)
{
 if (event_mask & LDC_EVENT_RESET)
  lp->cfg.event(lp->event_arg, LDC_EVENT_RESET);
 if (event_mask & LDC_EVENT_UP)
  lp->cfg.event(lp->event_arg, LDC_EVENT_UP);
 if (event_mask & LDC_EVENT_DATA_READY)
  lp->cfg.event(lp->event_arg, LDC_EVENT_DATA_READY);
}
