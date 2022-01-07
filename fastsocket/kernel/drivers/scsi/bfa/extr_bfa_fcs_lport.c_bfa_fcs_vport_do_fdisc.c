
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fdisc_sent; } ;
struct bfa_fcs_vport_s {TYPE_1__ vport_stats; int lps; } ;


 int __vport_bfa (struct bfa_fcs_vport_s*) ;
 int __vport_nwwn (struct bfa_fcs_vport_s*) ;
 int __vport_pwwn (struct bfa_fcs_vport_s*) ;
 int bfa_fcport_get_maxfrsize (int ) ;
 int bfa_lps_fdisc (int ,struct bfa_fcs_vport_s*,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_vport_do_fdisc(struct bfa_fcs_vport_s *vport)
{
 bfa_lps_fdisc(vport->lps, vport,
  bfa_fcport_get_maxfrsize(__vport_bfa(vport)),
  __vport_pwwn(vport), __vport_nwwn(vport));
 vport->vport_stats.fdisc_sent++;
}
