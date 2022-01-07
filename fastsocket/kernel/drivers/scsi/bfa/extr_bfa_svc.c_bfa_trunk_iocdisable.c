
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct TYPE_7__ {scalar_t__ state; TYPE_2__* link_attr; void* speed; } ;
struct TYPE_8__ {TYPE_3__ attr; } ;
struct TYPE_5__ {scalar_t__ trunked; } ;
struct bfa_fcport_s {TYPE_4__ trunk; TYPE_1__ cfg; } ;
struct TYPE_6__ {scalar_t__ deskew; void* speed; int link_state; int fctl; scalar_t__ trunk_wwn; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;
 int BFA_PORT_LINKDOWN ;
 void* BFA_PORT_SPEED_UNKNOWN ;
 int BFA_TRUE ;
 int BFA_TRUNK_LINK_FCTL_NORMAL ;
 int BFA_TRUNK_LINK_STATE_DN_LINKDN ;
 int BFA_TRUNK_MAX_PORTS ;
 scalar_t__ BFA_TRUNK_OFFLINE ;
 scalar_t__ BFA_TRUNK_ONLINE ;
 int bfa_fcport_scn (struct bfa_fcport_s*,int ,int ) ;

__attribute__((used)) static void
bfa_trunk_iocdisable(struct bfa_s *bfa)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);
 int i = 0;




 if (fcport->cfg.trunked) {
  if (fcport->trunk.attr.state == BFA_TRUNK_ONLINE)
   bfa_fcport_scn(fcport, BFA_PORT_LINKDOWN, BFA_TRUE);

  fcport->trunk.attr.state = BFA_TRUNK_OFFLINE;
  fcport->trunk.attr.speed = BFA_PORT_SPEED_UNKNOWN;
  for (i = 0; i < BFA_TRUNK_MAX_PORTS; i++) {
   fcport->trunk.attr.link_attr[i].trunk_wwn = 0;
   fcport->trunk.attr.link_attr[i].fctl =
      BFA_TRUNK_LINK_FCTL_NORMAL;
   fcport->trunk.attr.link_attr[i].link_state =
      BFA_TRUNK_LINK_STATE_DN_LINKDN;
   fcport->trunk.attr.link_attr[i].speed =
      BFA_PORT_SPEED_UNKNOWN;
   fcport->trunk.attr.link_attr[i].deskew = 0;
  }
 }
}
