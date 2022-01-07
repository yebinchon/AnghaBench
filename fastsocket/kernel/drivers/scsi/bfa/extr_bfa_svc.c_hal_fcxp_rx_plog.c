
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bfi_fcxp_send_rsp_s {scalar_t__ rsp_len; int fchs; } ;
struct bfa_s {int plog; } ;
struct bfa_fcxp_s {scalar_t__ use_irspbuf; } ;


 scalar_t__ BFA_FCXP_RSP_PLD (struct bfa_fcxp_s*) ;
 int BFA_PL_EID_RX ;
 int BFA_PL_MID_HAL_FCXP ;
 int bfa_plog_fchdr (int ,int ,int ,int ,int *) ;
 int bfa_plog_fchdr_and_pl (int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static void
hal_fcxp_rx_plog(struct bfa_s *bfa, struct bfa_fcxp_s *fcxp,
   struct bfi_fcxp_send_rsp_s *fcxp_rsp)
{
 if (fcxp_rsp->rsp_len > 0) {
  if (fcxp->use_irspbuf) {
   u32 pld_w0 =
    *((u32 *) BFA_FCXP_RSP_PLD(fcxp));

   bfa_plog_fchdr_and_pl(bfa->plog, BFA_PL_MID_HAL_FCXP,
           BFA_PL_EID_RX,
           (u16) fcxp_rsp->rsp_len,
           &fcxp_rsp->fchs, pld_w0);
  } else {
   bfa_plog_fchdr(bfa->plog, BFA_PL_MID_HAL_FCXP,
           BFA_PL_EID_RX,
           (u16) fcxp_rsp->rsp_len,
           &fcxp_rsp->fchs);
  }
 } else {
  bfa_plog_fchdr(bfa->plog, BFA_PL_MID_HAL_FCXP, BFA_PL_EID_RX,
          (u16) fcxp_rsp->rsp_len, &fcxp_rsp->fchs);
 }
}
