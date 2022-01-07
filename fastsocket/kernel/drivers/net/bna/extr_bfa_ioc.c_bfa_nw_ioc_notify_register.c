
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_notify {int qe; } ;
struct bfa_ioc {int notify_q; } ;


 int list_add_tail (int *,int *) ;

void
bfa_nw_ioc_notify_register(struct bfa_ioc *ioc,
   struct bfa_ioc_notify *notify)
{
 list_add_tail(&notify->qe, &ioc->notify_q);
}
