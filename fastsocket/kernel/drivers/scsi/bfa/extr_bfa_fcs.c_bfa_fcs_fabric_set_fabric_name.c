
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* wwn_t ;
struct bfad_s {int dummy; } ;
struct bfa_fcs_fabric_s {scalar_t__ fabric_name; int bport; TYPE_1__* fcs; } ;
struct TYPE_2__ {scalar_t__ bfad; } ;


 int BFA_LOG (int ,struct bfad_s*,int ,char*,char*,char*) ;
 int BFA_PORT_AEN_FABRIC_NAME_CHANGE ;
 int BFA_STRING_32 ;
 int KERN_WARNING ;
 int bfa_fcs_fabric_aen_post (int *,int ) ;
 int bfa_fcs_lport_get_fabric_name (int *) ;
 int bfa_fcs_lport_get_pwwn (int *) ;
 int bfa_log_level ;
 int bfa_trc (TYPE_1__*,void*) ;
 int wwn2str (char*,int ) ;

void
bfa_fcs_fabric_set_fabric_name(struct bfa_fcs_fabric_s *fabric,
          wwn_t fabric_name)
{
 struct bfad_s *bfad = (struct bfad_s *)fabric->fcs->bfad;
 char pwwn_ptr[BFA_STRING_32];
 char fwwn_ptr[BFA_STRING_32];

 bfa_trc(fabric->fcs, fabric_name);

 if (fabric->fabric_name == 0) {




  fabric->fabric_name = fabric_name;
 } else {
  fabric->fabric_name = fabric_name;
  wwn2str(pwwn_ptr, bfa_fcs_lport_get_pwwn(&fabric->bport));
  wwn2str(fwwn_ptr,
   bfa_fcs_lport_get_fabric_name(&fabric->bport));
  BFA_LOG(KERN_WARNING, bfad, bfa_log_level,
   "Base port WWN = %s Fabric WWN = %s\n",
   pwwn_ptr, fwwn_ptr);
  bfa_fcs_fabric_aen_post(&fabric->bport,
    BFA_PORT_AEN_FABRIC_NAME_CHANGE);
 }
}
