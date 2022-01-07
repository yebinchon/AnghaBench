
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int dummy; } ;


 int call_rxf_stop_cbfn (struct bna_rxf*) ;

__attribute__((used)) static void
bna_rxf_sm_stopped_entry(struct bna_rxf *rxf)
{
 call_rxf_stop_cbfn(rxf);
}
