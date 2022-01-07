
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int status; scalar_t__ timedout; } ;
typedef TYPE_1__ uioc_t ;
struct timer_list {unsigned long data; scalar_t__ expires; int function; } ;
struct TYPE_7__ {int (* issue_uioc ) (int ,TYPE_1__*,int ) ;int timeout; scalar_t__ quiescent; int drvr_data; } ;
typedef TYPE_2__ mraid_mmadp_t ;


 int ENODATA ;
 int HZ ;
 int IOCTL_ISSUE ;
 int add_timer (struct timer_list*) ;
 int del_timer_sync (struct timer_list*) ;
 int init_timer (struct timer_list*) ;
 scalar_t__ jiffies ;
 int lld_timedout ;
 int stub1 (int ,TYPE_1__*,int ) ;
 int wait_event (int ,int) ;
 int wait_q ;

__attribute__((used)) static int
lld_ioctl(mraid_mmadp_t *adp, uioc_t *kioc)
{
 int rval;
 struct timer_list timer;
 struct timer_list *tp = ((void*)0);

 kioc->status = -ENODATA;
 rval = adp->issue_uioc(adp->drvr_data, kioc, IOCTL_ISSUE);

 if (rval) return rval;




 if (adp->timeout > 0) {
  tp = &timer;
  init_timer(tp);

  tp->function = lld_timedout;
  tp->data = (unsigned long)kioc;
  tp->expires = jiffies + adp->timeout * HZ;

  add_timer(tp);
 }





 wait_event(wait_q, (kioc->status != -ENODATA));
 if (tp) {
  del_timer_sync(tp);
 }





 if (kioc->timedout) {
  adp->quiescent = 0;
 }

 return kioc->status;
}
