
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_fcport_s {int nwwn; TYPE_3__* bfa; int pwwn; } ;
struct TYPE_5__ {TYPE_1__* attr; } ;
struct TYPE_6__ {TYPE_2__ ioc; } ;
struct TYPE_4__ {int nwwn; int pwwn; } ;


 int bfa_trc (TYPE_3__*,int ) ;

__attribute__((used)) static void
bfa_fcport_set_wwns(struct bfa_fcport_s *fcport)
{
 fcport->pwwn = fcport->bfa->ioc.attr->pwwn;
 fcport->nwwn = fcport->bfa->ioc.attr->nwwn;

 bfa_trc(fcport->bfa, fcport->pwwn);
 bfa_trc(fcport->bfa, fcport->nwwn);
}
