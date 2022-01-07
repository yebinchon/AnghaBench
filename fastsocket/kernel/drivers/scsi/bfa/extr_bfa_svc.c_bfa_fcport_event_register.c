
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_fcport_s {void (* event_cbfn ) (void*,int) ;void* event_cbarg; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;

void
bfa_fcport_event_register(struct bfa_s *bfa,
    void (*cbfn) (void *cbarg,
    enum bfa_port_linkstate event),
    void *cbarg)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);

 fcport->event_cbfn = cbfn;
 fcport->event_cbarg = cbarg;
}
