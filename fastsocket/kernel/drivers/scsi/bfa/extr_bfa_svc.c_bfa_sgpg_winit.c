
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_sgpg_wqe_s {void (* cbfn ) (void*) ;void* cbarg; int sgpg_q; } ;


 int INIT_LIST_HEAD (int *) ;

void
bfa_sgpg_winit(struct bfa_sgpg_wqe_s *wqe, void (*cbfn) (void *cbarg),
     void *cbarg)
{
 INIT_LIST_HEAD(&wqe->sgpg_q);
 wqe->cbfn = cbfn;
 wqe->cbarg = cbarg;
}
