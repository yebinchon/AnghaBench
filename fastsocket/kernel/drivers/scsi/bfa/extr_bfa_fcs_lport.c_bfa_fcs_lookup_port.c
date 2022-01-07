
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wwn_t ;
typedef int u16 ;
struct TYPE_5__ {int pwwn; } ;
struct bfa_fcs_lport_s {TYPE_1__ port_cfg; } ;
struct bfa_fcs_vport_s {struct bfa_fcs_lport_s lport; } ;
struct bfa_fcs_s {int dummy; } ;
struct TYPE_6__ {struct bfa_fcs_lport_s bport; } ;
typedef TYPE_2__ bfa_fcs_vf_t ;


 int WARN_ON (int ) ;
 struct bfa_fcs_vport_s* bfa_fcs_fabric_vport_lookup (TYPE_2__*,int ) ;
 TYPE_2__* bfa_fcs_vf_lookup (struct bfa_fcs_s*,int ) ;
 int bfa_trc (struct bfa_fcs_s*,int ) ;

struct bfa_fcs_lport_s *
bfa_fcs_lookup_port(struct bfa_fcs_s *fcs, u16 vf_id, wwn_t lpwwn)
{
 struct bfa_fcs_vport_s *vport;
 bfa_fcs_vf_t *vf;

 WARN_ON(fcs == ((void*)0));

 vf = bfa_fcs_vf_lookup(fcs, vf_id);
 if (vf == ((void*)0)) {
  bfa_trc(fcs, vf_id);
  return ((void*)0);
 }

 if (!lpwwn || (vf->bport.port_cfg.pwwn == lpwwn))
  return &vf->bport;

 vport = bfa_fcs_fabric_vport_lookup(vf, lpwwn);
 if (vport)
  return &vport->lport;

 return ((void*)0);
}
