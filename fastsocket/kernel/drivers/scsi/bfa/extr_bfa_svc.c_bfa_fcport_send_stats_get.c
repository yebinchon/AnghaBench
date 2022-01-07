
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_fcport_req_s {int mh; } ;
struct bfa_fcport_s {int bfa; int stats_qfull; int stats_reqq_wait; } ;


 int BFA_FALSE ;
 int BFA_REQQ_PORT ;
 int BFA_TRUE ;
 int BFI_FCPORT_H2I_STATS_GET_REQ ;
 int BFI_MC_FCPORT ;
 int bfa_fn_lpu (int ) ;
 struct bfi_fcport_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfa_reqq_winit (int *,void (*) (void*),struct bfa_fcport_s*) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int memset (struct bfi_fcport_req_s*,int ,int) ;

__attribute__((used)) static void
bfa_fcport_send_stats_get(void *cbarg)
{
 struct bfa_fcport_s *fcport = (struct bfa_fcport_s *) cbarg;
 struct bfi_fcport_req_s *msg;

 msg = bfa_reqq_next(fcport->bfa, BFA_REQQ_PORT);

 if (!msg) {
  fcport->stats_qfull = BFA_TRUE;
  bfa_reqq_winit(&fcport->stats_reqq_wait,
    bfa_fcport_send_stats_get, fcport);
  bfa_reqq_wait(fcport->bfa, BFA_REQQ_PORT,
    &fcport->stats_reqq_wait);
  return;
 }
 fcport->stats_qfull = BFA_FALSE;

 memset(msg, 0, sizeof(struct bfi_fcport_req_s));
 bfi_h2i_set(msg->mh, BFI_MC_FCPORT, BFI_FCPORT_H2I_STATS_GET_REQ,
   bfa_fn_lpu(fcport->bfa));
 bfa_reqq_produce(fcport->bfa, BFA_REQQ_PORT, msg->mh);
}
