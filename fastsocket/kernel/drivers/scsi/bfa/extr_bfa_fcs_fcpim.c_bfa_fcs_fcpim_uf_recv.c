
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fchs_s {int type; int ox_id; } ;
struct fc_els_cmd_s {int els_code; } ;
struct bfa_fcs_itnim_s {int rport; int fcs; } ;



 scalar_t__ FC_TYPE_ELS ;
 int WARN_ON (int) ;
 int bfa_fcs_rport_prlo (int ,int ) ;
 int bfa_trc (int ,int) ;

void
bfa_fcs_fcpim_uf_recv(struct bfa_fcs_itnim_s *itnim,
   struct fchs_s *fchs, u16 len)
{
 struct fc_els_cmd_s *els_cmd;

 bfa_trc(itnim->fcs, fchs->type);

 if (fchs->type != FC_TYPE_ELS)
  return;

 els_cmd = (struct fc_els_cmd_s *) (fchs + 1);

 bfa_trc(itnim->fcs, els_cmd->els_code);

 switch (els_cmd->els_code) {
 case 128:
  bfa_fcs_rport_prlo(itnim->rport, fchs->ox_id);
  break;

 default:
  WARN_ON(1);
 }
}
