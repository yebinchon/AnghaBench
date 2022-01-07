
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioim_s {int bfa; } ;
typedef enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;





 int bfa_ioim_free (struct bfa_ioim_s*) ;
 int bfa_ioim_notify_cleanup (struct bfa_ioim_s*) ;
 int bfa_ioim_sm_uninit ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_ioim_s*,int ) ;

__attribute__((used)) static void
bfa_ioim_sm_hcb(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
 switch (event) {
 case 129:
  bfa_sm_set_state(ioim, bfa_ioim_sm_uninit);
  bfa_ioim_free(ioim);
  break;

 case 130:
  bfa_ioim_notify_cleanup(ioim);
  break;

 case 128:
  break;

 default:
  bfa_sm_fault(ioim->bfa, event);
 }
}
