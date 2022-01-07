
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
typedef int u16 ;
struct bfa_fcs_vport_s {int dummy; } ;
struct bfa_fcs_s {int dummy; } ;
struct bfa_fcs_fabric_s {int dummy; } ;


 struct bfa_fcs_vport_s* bfa_fcs_fabric_vport_lookup (struct bfa_fcs_fabric_s*,int ) ;
 struct bfa_fcs_fabric_s* bfa_fcs_vf_lookup (struct bfa_fcs_s*,int ) ;
 int bfa_trc (struct bfa_fcs_s*,int ) ;

struct bfa_fcs_vport_s *
bfa_fcs_vport_lookup(struct bfa_fcs_s *fcs, u16 vf_id, wwn_t vpwwn)
{
 struct bfa_fcs_vport_s *vport;
 struct bfa_fcs_fabric_s *fabric;

 bfa_trc(fcs, vf_id);
 bfa_trc(fcs, vpwwn);

 fabric = bfa_fcs_vf_lookup(fcs, vf_id);
 if (!fabric) {
  bfa_trc(fcs, vf_id);
  return ((void*)0);
 }

 vport = bfa_fcs_fabric_vport_lookup(fabric, vpwwn);
 return vport;
}
