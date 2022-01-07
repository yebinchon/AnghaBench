
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int dummy; } ;


 int bfa_fsm_set_state (struct bna_rxf*,int ) ;
 int bna_rxf_cfg_apply (struct bna_rxf*) ;
 int bna_rxf_sm_started ;

__attribute__((used)) static void
bna_rxf_sm_cfg_wait_entry(struct bna_rxf *rxf)
{
 if (!bna_rxf_cfg_apply(rxf)) {

  bfa_fsm_set_state(rxf, bna_rxf_sm_started);
 }
}
