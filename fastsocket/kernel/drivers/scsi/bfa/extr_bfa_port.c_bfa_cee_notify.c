
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_stats_cbarg; int (* reset_stats_cbfn ) (int ,void*) ;int get_stats_cbarg; int (* get_stats_cbfn ) (int ,void*) ;int get_attr_cbarg; int (* get_attr_cbfn ) (int ,void*) ;} ;
struct bfa_cee_s {TYPE_1__ cbfn; void* reset_stats_pending; void* reset_stats_status; void* get_stats_pending; void* get_stats_status; void* get_attr_pending; void* get_attr_status; } ;
typedef enum bfa_ioc_event_e { ____Placeholder_bfa_ioc_event_e } bfa_ioc_event_e ;


 void* BFA_FALSE ;


 void* BFA_STATUS_FAILED ;
 void* BFA_TRUE ;
 int bfa_trc (struct bfa_cee_s*,int) ;
 int stub1 (int ,void*) ;
 int stub2 (int ,void*) ;
 int stub3 (int ,void*) ;

void
bfa_cee_notify(void *arg, enum bfa_ioc_event_e event)
{
 struct bfa_cee_s *cee = (struct bfa_cee_s *) arg;

 bfa_trc(cee, event);

 switch (event) {
 case 129:
 case 128:
  if (cee->get_attr_pending == BFA_TRUE) {
   cee->get_attr_status = BFA_STATUS_FAILED;
   cee->get_attr_pending = BFA_FALSE;
   if (cee->cbfn.get_attr_cbfn) {
    cee->cbfn.get_attr_cbfn(
     cee->cbfn.get_attr_cbarg,
     BFA_STATUS_FAILED);
   }
  }
  if (cee->get_stats_pending == BFA_TRUE) {
   cee->get_stats_status = BFA_STATUS_FAILED;
   cee->get_stats_pending = BFA_FALSE;
   if (cee->cbfn.get_stats_cbfn) {
    cee->cbfn.get_stats_cbfn(
    cee->cbfn.get_stats_cbarg,
    BFA_STATUS_FAILED);
   }
  }
  if (cee->reset_stats_pending == BFA_TRUE) {
   cee->reset_stats_status = BFA_STATUS_FAILED;
   cee->reset_stats_pending = BFA_FALSE;
   if (cee->cbfn.reset_stats_cbfn) {
    cee->cbfn.reset_stats_cbfn(
    cee->cbfn.reset_stats_cbarg,
    BFA_STATUS_FAILED);
   }
  }
  break;

 default:
  break;
 }
}
