
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int dummy; } ;


 int call_rxf_cam_fltr_cbfn (struct bna_rxf*) ;
 int call_rxf_resume_cbfn (struct bna_rxf*) ;
 int call_rxf_start_cbfn (struct bna_rxf*) ;

__attribute__((used)) static void
bna_rxf_sm_started_entry(struct bna_rxf *rxf)
{
 call_rxf_start_cbfn(rxf);
 call_rxf_cam_fltr_cbfn(rxf);
 call_rxf_resume_cbfn(rxf);
}
