
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcoe_ctlr {TYPE_1__* lp; int rnd_state; scalar_t__ probe_tries; } ;
struct TYPE_2__ {int wwpn; } ;


 int fcoe_ctlr_vn_restart (struct fcoe_ctlr*) ;
 int prandom32_seed (int *,int ) ;

__attribute__((used)) static void fcoe_ctlr_vn_start(struct fcoe_ctlr *fip)
{
 fip->probe_tries = 0;
 prandom32_seed(&fip->rnd_state, fip->lp->wwpn);
 fcoe_ctlr_vn_restart(fip);
}
