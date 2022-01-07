
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_dport_s {int * cbarg; int (* cbfn ) (int *,int ) ;} ;
typedef int bfa_status_t ;


 int stub1 (int *,int ) ;

__attribute__((used)) static void
bfa_cb_fcdiag_dport(struct bfa_dport_s *dport, bfa_status_t bfa_status)
{
 if (dport->cbfn != ((void*)0)) {
  dport->cbfn(dport->cbarg, bfa_status);
  dport->cbfn = ((void*)0);
  dport->cbarg = ((void*)0);
 }
}
