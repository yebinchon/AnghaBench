
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link_e2e; int state; } ;
struct bfa_diag_s {TYPE_1__ beacon; int dev; int (* cbfn_beacon ) (int ,int ,int ) ;} ;


 int BFA_FALSE ;
 int bfa_trc (struct bfa_diag_s*,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void
diag_portbeacon_comp(struct bfa_diag_s *diag)
{
 bfa_trc(diag, diag->beacon.state);
 diag->beacon.state = BFA_FALSE;
 if (diag->cbfn_beacon)
  diag->cbfn_beacon(diag->dev, BFA_FALSE, diag->beacon.link_e2e);
}
