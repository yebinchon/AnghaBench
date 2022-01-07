
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_itnim_s {int bfa; int reqq_wait; TYPE_1__* rport; } ;
typedef enum bfa_itnim_event { ____Placeholder_bfa_itnim_event } bfa_itnim_event ;
struct TYPE_2__ {int rport_tag; } ;






 int bfa_fcpim_delitn (struct bfa_itnim_s*) ;
 int bfa_itnim_offline_cb (struct bfa_itnim_s*) ;
 int bfa_itnim_send_fwcreate (struct bfa_itnim_s*) ;
 int bfa_itnim_sm_fwcreate ;
 int bfa_itnim_sm_iocdisable ;
 int bfa_itnim_sm_offline ;
 int bfa_itnim_sm_uninit ;
 int bfa_reqq_wcancel (int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_itnim_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_itnim_sm_fwcreate_qfull(struct bfa_itnim_s *itnim,
   enum bfa_itnim_event event)
{
 bfa_trc(itnim->bfa, itnim->rport->rport_tag);
 bfa_trc(itnim->bfa, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(itnim, bfa_itnim_sm_fwcreate);
  bfa_itnim_send_fwcreate(itnim);
  break;

 case 131:
  bfa_sm_set_state(itnim, bfa_itnim_sm_uninit);
  bfa_reqq_wcancel(&itnim->reqq_wait);
  bfa_fcpim_delitn(itnim);
  break;

 case 129:
  bfa_sm_set_state(itnim, bfa_itnim_sm_offline);
  bfa_reqq_wcancel(&itnim->reqq_wait);
  bfa_itnim_offline_cb(itnim);
  break;

 case 130:
  bfa_sm_set_state(itnim, bfa_itnim_sm_iocdisable);
  bfa_reqq_wcancel(&itnim->reqq_wait);
  break;

 default:
  bfa_sm_fault(itnim->bfa, event);
 }
}
