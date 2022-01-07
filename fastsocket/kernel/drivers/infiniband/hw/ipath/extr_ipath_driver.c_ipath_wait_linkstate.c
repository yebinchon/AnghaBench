
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
typedef int u32 ;
struct ipath_devdata {int ipath_state_wanted; int ipath_flags; size_t ibcs_lts_mask; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_ibcctrl; int kr_ibcstatus; } ;


 int ETIMEDOUT ;
 int IPATH_LINKARMED ;
 int IPATH_LINKDOWN ;
 int IPATH_LINKINIT ;
 int VERBOSE ;
 int ipath_cdbg (int ,char*,...) ;
 int * ipath_ibcstatus_str ;
 size_t ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_state_wait ;
 int msecs_to_jiffies (int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int ipath_wait_linkstate(struct ipath_devdata *dd, u32 state, int msecs)
{
 dd->ipath_state_wanted = state;
 wait_event_interruptible_timeout(ipath_state_wait,
      (dd->ipath_flags & state),
      msecs_to_jiffies(msecs));
 dd->ipath_state_wanted = 0;

 if (!(dd->ipath_flags & state)) {
  u64 val;
  ipath_cdbg(VERBOSE, "Didn't reach linkstate %s within %u"
      " ms\n",

      (state & IPATH_LINKINIT) ? "INIT" :
      ((state & IPATH_LINKDOWN) ? "DOWN" :
       ((state & IPATH_LINKARMED) ? "ARM" : "ACTIVE")),
      msecs);
  val = ipath_read_kreg64(dd, dd->ipath_kregs->kr_ibcstatus);
  ipath_cdbg(VERBOSE, "ibcc=%llx ibcstatus=%llx (%s)\n",
      (unsigned long long) ipath_read_kreg64(
       dd, dd->ipath_kregs->kr_ibcctrl),
      (unsigned long long) val,
      ipath_ibcstatus_str[val & dd->ibcs_lts_mask]);
 }
 return (dd->ipath_flags & state) ? 0 : -ETIMEDOUT;
}
