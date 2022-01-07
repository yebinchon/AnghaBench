
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_fcs_itnim_s {TYPE_2__* fcs; TYPE_1__* rport; int bfa_itnim; int itnim_drv; } ;
typedef enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_5__ {scalar_t__ bfad; } ;
struct TYPE_4__ {int pwwn; int port; } ;




 int BFA_ITNIM_AEN_DISCONNECT ;
 int BFA_ITNIM_AEN_OFFLINE ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*,char*,char*) ;
 int BFA_STRING_32 ;
 int BFA_TRUE ;
 int KERN_ERR ;
 int KERN_INFO ;
 int bfa_fcb_itnim_offline (int ) ;
 int bfa_fcs_itnim_aen_post (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_fcs_itnim_free (struct bfa_fcs_itnim_s*) ;
 int bfa_fcs_itnim_sm_hcb_offline ;
 int bfa_fcs_itnim_sm_offline ;
 int bfa_fcs_lport_get_pwwn (int ) ;
 int bfa_fcs_lport_is_online (int ) ;
 int bfa_itnim_offline (int ) ;
 int bfa_log_level ;
 int bfa_sm_fault (TYPE_2__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_trc (TYPE_2__*,int) ;
 int wwn2str (char*,int) ;

__attribute__((used)) static void
bfa_fcs_itnim_sm_online(struct bfa_fcs_itnim_s *itnim,
   enum bfa_fcs_itnim_event event)
{
 struct bfad_s *bfad = (struct bfad_s *)itnim->fcs->bfad;
 char lpwwn_buf[BFA_STRING_32];
 char rpwwn_buf[BFA_STRING_32];

 bfa_trc(itnim->fcs, itnim->rport->pwwn);
 bfa_trc(itnim->fcs, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_hcb_offline);
  bfa_fcb_itnim_offline(itnim->itnim_drv);
  bfa_itnim_offline(itnim->bfa_itnim);
  wwn2str(lpwwn_buf, bfa_fcs_lport_get_pwwn(itnim->rport->port));
  wwn2str(rpwwn_buf, itnim->rport->pwwn);
  if (bfa_fcs_lport_is_online(itnim->rport->port) == BFA_TRUE) {
   BFA_LOG(KERN_ERR, bfad, bfa_log_level,
   "Target (WWN = %s) connectivity lost for "
   "initiator (WWN = %s)\n", rpwwn_buf, lpwwn_buf);
   bfa_fcs_itnim_aen_post(itnim, BFA_ITNIM_AEN_DISCONNECT);
  } else {
   BFA_LOG(KERN_INFO, bfad, bfa_log_level,
   "Target (WWN = %s) offlined by initiator (WWN = %s)\n",
   rpwwn_buf, lpwwn_buf);
   bfa_fcs_itnim_aen_post(itnim, BFA_ITNIM_AEN_OFFLINE);
  }
  break;

 case 129:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
  bfa_fcs_itnim_free(itnim);
  break;

 default:
  bfa_sm_fault(itnim->fcs, event);
 }
}
