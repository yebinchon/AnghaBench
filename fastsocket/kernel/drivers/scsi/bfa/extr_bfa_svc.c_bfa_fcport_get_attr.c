
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* attr; } ;
struct bfa_s {TYPE_2__ ioc; } ;
struct bfa_port_cfg_s {int dummy; } ;
struct TYPE_9__ {int q_depth; int path_tov; int trunked; int topology; int speed; } ;
struct bfa_port_attr_s {int fcoe_vlan; int port_state; int fec_state; TYPE_4__ pport_cfg; int link_e2e_beacon; int beacon; int topology; int cos_supported; int speed; int speed_supported; int factorynwwn; int factorypwwn; int pwwn; int nwwn; } ;
struct TYPE_10__ {int trunked; int topology; int speed; } ;
struct bfa_fcport_s {int fcoe_vlan; TYPE_3__* bfa; int fec_state; int sm; int link_e2e_beacon; int beacon; TYPE_5__ cfg; int topology; int speed; int speed_sup; int pwwn; int nwwn; } ;
struct TYPE_8__ {int ioc; } ;
struct TYPE_6__ {int mfg_nwwn; int mfg_pwwn; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;
 int BFA_PORT_ST_FWMISMATCH ;
 int BFA_PORT_ST_IOCDIS ;
 int BFA_PORT_ST_PREBOOT_DISABLED ;
 int FC_CLASS_3 ;
 int bfa_fcpim_path_tov_get (struct bfa_s*) ;
 int bfa_fcpim_qdepth_get (struct bfa_s*) ;
 scalar_t__ bfa_fcport_is_pbcdisabled (struct bfa_s*) ;
 scalar_t__ bfa_ioc_fw_mismatch (int *) ;
 scalar_t__ bfa_ioc_is_disabled (int *) ;
 int bfa_sm_to_state (int ,int ) ;
 int hal_port_sm_table ;
 int memcpy (TYPE_4__*,TYPE_5__*,int) ;
 int memset (struct bfa_port_attr_s*,int ,int) ;

void
bfa_fcport_get_attr(struct bfa_s *bfa, struct bfa_port_attr_s *attr)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);

 memset(attr, 0, sizeof(struct bfa_port_attr_s));

 attr->nwwn = fcport->nwwn;
 attr->pwwn = fcport->pwwn;

 attr->factorypwwn = bfa->ioc.attr->mfg_pwwn;
 attr->factorynwwn = bfa->ioc.attr->mfg_nwwn;

 memcpy(&attr->pport_cfg, &fcport->cfg,
  sizeof(struct bfa_port_cfg_s));

 attr->pport_cfg.speed = fcport->cfg.speed;
 attr->speed_supported = fcport->speed_sup;
 attr->speed = fcport->speed;
 attr->cos_supported = FC_CLASS_3;


 attr->pport_cfg.topology = fcport->cfg.topology;
 attr->topology = fcport->topology;
 attr->pport_cfg.trunked = fcport->cfg.trunked;


 attr->beacon = fcport->beacon;
 attr->link_e2e_beacon = fcport->link_e2e_beacon;

 attr->pport_cfg.path_tov = bfa_fcpim_path_tov_get(bfa);
 attr->pport_cfg.q_depth = bfa_fcpim_qdepth_get(bfa);
 attr->port_state = bfa_sm_to_state(hal_port_sm_table, fcport->sm);

 attr->fec_state = fcport->fec_state;


 if (bfa_fcport_is_pbcdisabled(bfa))
  attr->port_state = BFA_PORT_ST_PREBOOT_DISABLED;
 else {
  if (bfa_ioc_is_disabled(&fcport->bfa->ioc))
   attr->port_state = BFA_PORT_ST_IOCDIS;
  else if (bfa_ioc_fw_mismatch(&fcport->bfa->ioc))
   attr->port_state = BFA_PORT_ST_FWMISMATCH;
 }


 attr->fcoe_vlan = fcport->fcoe_vlan;
}
