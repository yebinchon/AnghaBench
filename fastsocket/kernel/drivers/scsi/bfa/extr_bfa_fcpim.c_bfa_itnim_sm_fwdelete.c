
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_itnim_s {int bfa; TYPE_1__* rport; } ;
typedef enum bfa_itnim_event { ____Placeholder_bfa_itnim_event } bfa_itnim_event ;
struct TYPE_2__ {int rport_tag; } ;





 int bfa_itnim_offline_cb (struct bfa_itnim_s*) ;
 int bfa_itnim_sm_deleting ;
 int bfa_itnim_sm_iocdisable ;
 int bfa_itnim_sm_offline ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_itnim_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_itnim_sm_fwdelete(struct bfa_itnim_s *itnim, enum bfa_itnim_event event)
{
 bfa_trc(itnim->bfa, itnim->rport->rport_tag);
 bfa_trc(itnim->bfa, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(itnim, bfa_itnim_sm_offline);
  bfa_itnim_offline_cb(itnim);
  break;

 case 130:
  bfa_sm_set_state(itnim, bfa_itnim_sm_deleting);
  break;

 case 128:
  bfa_sm_set_state(itnim, bfa_itnim_sm_iocdisable);
  bfa_itnim_offline_cb(itnim);
  break;

 default:
  bfa_sm_fault(itnim->bfa, event);
 }
}
