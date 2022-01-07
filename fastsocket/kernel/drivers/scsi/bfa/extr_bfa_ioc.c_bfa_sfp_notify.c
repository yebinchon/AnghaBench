
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_sfp_s {int lock; int state_query_lock; void* status; } ;
typedef enum bfa_ioc_event_e { ____Placeholder_bfa_ioc_event_e } bfa_ioc_event_e ;




 void* BFA_STATUS_IOC_FAILURE ;
 int bfa_cb_sfp_show (struct bfa_sfp_s*) ;
 int bfa_cb_sfp_state_query (struct bfa_sfp_s*) ;
 int bfa_trc (struct bfa_sfp_s*,int) ;

__attribute__((used)) static void
bfa_sfp_notify(void *sfp_arg, enum bfa_ioc_event_e event)
{
 struct bfa_sfp_s *sfp = sfp_arg;

 bfa_trc(sfp, event);
 bfa_trc(sfp, sfp->lock);
 bfa_trc(sfp, sfp->state_query_lock);

 switch (event) {
 case 129:
 case 128:
  if (sfp->lock) {
   sfp->status = BFA_STATUS_IOC_FAILURE;
   bfa_cb_sfp_show(sfp);
  }

  if (sfp->state_query_lock) {
   sfp->status = BFA_STATUS_IOC_FAILURE;
   bfa_cb_sfp_state_query(sfp);
  }
  break;

 default:
  break;
 }
}
