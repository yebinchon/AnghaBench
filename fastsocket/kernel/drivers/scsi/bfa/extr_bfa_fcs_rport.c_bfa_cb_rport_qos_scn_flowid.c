
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_rport_qos_attr_s {int dummy; } ;
struct TYPE_2__ {struct bfa_rport_qos_attr_s qos; } ;
struct bfa_rport_aen_data_s {TYPE_1__ priv; } ;
struct bfa_fcs_rport_s {int pwwn; int fcs; } ;


 int BFA_RPORT_AEN_QOS_FLOWID ;
 int bfa_fcs_rport_aen_post (struct bfa_fcs_rport_s*,int ,struct bfa_rport_aen_data_s*) ;
 int bfa_trc (int ,int ) ;

void
bfa_cb_rport_qos_scn_flowid(void *cbarg,
  struct bfa_rport_qos_attr_s old_qos_attr,
  struct bfa_rport_qos_attr_s new_qos_attr)
{
 struct bfa_fcs_rport_s *rport = (struct bfa_fcs_rport_s *) cbarg;
 struct bfa_rport_aen_data_s aen_data;

 bfa_trc(rport->fcs, rport->pwwn);
 aen_data.priv.qos = new_qos_attr;
 bfa_fcs_rport_aen_post(rport, BFA_RPORT_AEN_QOS_FLOWID, &aen_data);
}
