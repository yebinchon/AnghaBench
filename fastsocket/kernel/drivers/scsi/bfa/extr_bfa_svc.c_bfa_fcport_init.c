
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pbc_disabled; } ;
struct TYPE_5__ {TYPE_1__ port; } ;
struct bfa_s {TYPE_2__ modules; int ioc; } ;
struct TYPE_6__ {scalar_t__ maxfrsize; int rx_bbcredit; } ;
struct bfa_fcport_s {int speed_sup; TYPE_3__ cfg; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;
 int BFA_TRUE ;
 int WARN_ON (int) ;
 scalar_t__ bfa_fcport_is_pbcdisabled (struct bfa_s*) ;
 int bfa_fcport_set_wwns (struct bfa_fcport_s*) ;
 scalar_t__ bfa_ioc_maxfrsize (int *) ;
 int bfa_ioc_rx_bbcredit (int *) ;
 int bfa_ioc_speed_sup (int *) ;

void
bfa_fcport_init(struct bfa_s *bfa)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);




 bfa_fcport_set_wwns(fcport);
 if (fcport->cfg.maxfrsize == 0)
  fcport->cfg.maxfrsize = bfa_ioc_maxfrsize(&bfa->ioc);
 fcport->cfg.rx_bbcredit = bfa_ioc_rx_bbcredit(&bfa->ioc);
 fcport->speed_sup = bfa_ioc_speed_sup(&bfa->ioc);

 if (bfa_fcport_is_pbcdisabled(bfa))
  bfa->modules.port.pbc_disabled = BFA_TRUE;

 WARN_ON(!fcport->cfg.maxfrsize);
 WARN_ON(!fcport->cfg.rx_bbcredit);
 WARN_ON(!fcport->speed_sup);
}
