
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_ctxtdata {int subctxt_cnt; int ppd; int * user_event_mask; } ;


 int ENETDOWN ;
 int _QIB_EVENT_DISARM_BUFS_BIT ;
 int msleep (int) ;
 int set_bit (int ,int *) ;
 int usable (int ) ;

__attribute__((used)) static int disarm_req_delay(struct qib_ctxtdata *rcd)
{
 int ret = 0;

 if (!usable(rcd->ppd)) {
  int i;






  if (rcd->user_event_mask) {




   set_bit(_QIB_EVENT_DISARM_BUFS_BIT,
    &rcd->user_event_mask[0]);
   for (i = 1; i < rcd->subctxt_cnt; i++)
    set_bit(_QIB_EVENT_DISARM_BUFS_BIT,
     &rcd->user_event_mask[i]);
  }
  for (i = 0; !usable(rcd->ppd) && i < 300; i++)
   msleep(100);
  ret = -ENETDOWN;
 }
 return ret;
}
