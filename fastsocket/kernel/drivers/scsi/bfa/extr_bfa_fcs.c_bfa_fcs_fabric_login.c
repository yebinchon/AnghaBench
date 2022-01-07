
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct bfa_s {int dummy; } ;
struct bfa_lport_cfg_s {int nwwn; int pwwn; } ;
struct TYPE_4__ {int flogi_sent; } ;
struct TYPE_6__ {struct bfa_lport_cfg_s port_cfg; } ;
struct bfa_fcs_fabric_s {TYPE_1__ stats; int auth_reqd; int lps; TYPE_3__ bport; TYPE_2__* fcs; } ;
struct TYPE_5__ {struct bfa_s* bfa; } ;


 int bfa_fcport_get_maxfrsize (struct bfa_s*) ;
 int bfa_lps_flogi (int ,struct bfa_fcs_fabric_s*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_fabric_login(struct bfa_fcs_fabric_s *fabric)
{
 struct bfa_s *bfa = fabric->fcs->bfa;
 struct bfa_lport_cfg_s *pcfg = &fabric->bport.port_cfg;
 u8 alpa = 0;


 bfa_lps_flogi(fabric->lps, fabric, alpa, bfa_fcport_get_maxfrsize(bfa),
        pcfg->pwwn, pcfg->nwwn, fabric->auth_reqd);

 fabric->stats.flogi_sent++;
}
