
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_stats_cbarg; int (* reset_stats_cbfn ) (int ,void*) ;int get_stats_cbarg; int (* get_stats_cbfn ) (int ,void*) ;int get_attr_cbarg; int (* get_attr_cbfn ) (int ,void*) ;} ;
struct bfa_cee {int get_attr_pending; int get_stats_pending; int reset_stats_pending; TYPE_1__ cbfn; void* reset_stats_status; void* get_stats_status; void* get_attr_status; } ;
typedef enum bfa_ioc_event { ____Placeholder_bfa_ioc_event } bfa_ioc_event ;




 void* BFA_STATUS_FAILED ;
 int stub1 (int ,void*) ;
 int stub2 (int ,void*) ;
 int stub3 (int ,void*) ;

__attribute__((used)) static void
bfa_cee_notify(void *arg, enum bfa_ioc_event event)
{
 struct bfa_cee *cee;
 cee = (struct bfa_cee *) arg;

 switch (event) {
 case 129:
 case 128:
  if (cee->get_attr_pending) {
   cee->get_attr_status = BFA_STATUS_FAILED;
   cee->get_attr_pending = 0;
   if (cee->cbfn.get_attr_cbfn) {
    cee->cbfn.get_attr_cbfn(
     cee->cbfn.get_attr_cbarg,
     BFA_STATUS_FAILED);
   }
  }
  if (cee->get_stats_pending) {
   cee->get_stats_status = BFA_STATUS_FAILED;
   cee->get_stats_pending = 0;
   if (cee->cbfn.get_stats_cbfn) {
    cee->cbfn.get_stats_cbfn(
     cee->cbfn.get_stats_cbarg,
     BFA_STATUS_FAILED);
   }
  }
  if (cee->reset_stats_pending) {
   cee->reset_stats_status = BFA_STATUS_FAILED;
   cee->reset_stats_pending = 0;
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
