
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_fcs_lport_s {TYPE_2__* fabric; scalar_t__ vport; TYPE_1__* fcs; } ;
struct TYPE_4__ {int wc; } ;
struct TYPE_3__ {scalar_t__ bfad; } ;


 int BFA_LOG (int ,struct bfad_s*,int ,char*,char*,char*) ;
 int BFA_LPORT_AEN_DELETE ;
 int BFA_STRING_32 ;
 int KERN_INFO ;
 int bfa_fcs_lport_aen_post (struct bfa_fcs_lport_s*,int ) ;
 int bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_vport_delete_comp (scalar_t__) ;
 int bfa_log_level ;
 int bfa_wc_down (int *) ;
 int wwn2str (char*,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_deleted(struct bfa_fcs_lport_s *port)
{
 struct bfad_s *bfad = (struct bfad_s *)port->fcs->bfad;
 char lpwwn_buf[BFA_STRING_32];

 wwn2str(lpwwn_buf, bfa_fcs_lport_get_pwwn(port));
 BFA_LOG(KERN_INFO, bfad, bfa_log_level,
  "Logical port deleted: WWN = %s Role = %s\n",
  lpwwn_buf, "Initiator");
 bfa_fcs_lport_aen_post(port, BFA_LPORT_AEN_DELETE);


 if (port->vport)
  bfa_fcs_vport_delete_comp(port->vport);
 else
  bfa_wc_down(&port->fabric->wc);
}
