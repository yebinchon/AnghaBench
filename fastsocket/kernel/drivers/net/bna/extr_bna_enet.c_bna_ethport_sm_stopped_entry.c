
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {int dummy; } ;


 int call_ethport_stop_cbfn (struct bna_ethport*) ;

__attribute__((used)) static void
bna_ethport_sm_stopped_entry(struct bna_ethport *ethport)
{
 call_ethport_stop_cbfn(ethport);
}
