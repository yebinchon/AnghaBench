
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_diag_lb_req_s {int mh; int pattern; int loopcnt; int speed; int lb_mode; } ;
struct bfa_fcdiag_s {int bfa; } ;
struct bfa_diag_loopback_s {int pattern; int loopcnt; int speed; int lb_mode; } ;
typedef int bfa_status_t ;


 int BFA_REQQ_DIAG ;
 int BFA_STATUS_DEVBUSY ;
 int BFA_STATUS_OK ;
 int BFI_DIAG_H2I_LOOPBACK ;
 int BFI_MC_DIAG ;
 int bfa_fn_lpu (int ) ;
 struct bfi_diag_lb_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_trc (struct bfa_fcdiag_s*,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static bfa_status_t
bfa_fcdiag_loopback_send(struct bfa_fcdiag_s *fcdiag,
   struct bfa_diag_loopback_s *loopback)
{
 struct bfi_diag_lb_req_s *lb_req;

 lb_req = bfa_reqq_next(fcdiag->bfa, BFA_REQQ_DIAG);
 if (!lb_req)
  return BFA_STATUS_DEVBUSY;


 bfi_h2i_set(lb_req->mh, BFI_MC_DIAG, BFI_DIAG_H2I_LOOPBACK,
  bfa_fn_lpu(fcdiag->bfa));

 lb_req->lb_mode = loopback->lb_mode;
 lb_req->speed = loopback->speed;
 lb_req->loopcnt = loopback->loopcnt;
 lb_req->pattern = loopback->pattern;


 bfa_reqq_produce(fcdiag->bfa, BFA_REQQ_DIAG, lb_req->mh);

 bfa_trc(fcdiag, loopback->lb_mode);
 bfa_trc(fcdiag, loopback->speed);
 bfa_trc(fcdiag, loopback->loopcnt);
 bfa_trc(fcdiag, loopback->pattern);
 return BFA_STATUS_OK;
}
