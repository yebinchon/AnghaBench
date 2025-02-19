
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sfp_mem_s {int dummy; } ;
struct bfi_sfp_rsp_s {int status; int state; } ;
struct bfi_mbmsg_s {int dummy; } ;
struct bfa_sfp_s {int lock; int data_valid; scalar_t__ state; scalar_t__ status; int memtype; int state_query_lock; int dbuf_kva; TYPE_1__* sfpmem; } ;
struct TYPE_2__ {int srlid_base; } ;


 scalar_t__ BFA_SFP_STATE_UNSUPPORT ;
 scalar_t__ BFA_SFP_STATE_VALID ;
 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ BFA_STATUS_SFP_UNSUPP ;
 scalar_t__ BFI_SFP_MEM_DIAGEXT ;
 int bfa_cb_sfp_show (struct bfa_sfp_s*) ;
 int bfa_cb_sfp_state_query (struct bfa_sfp_s*) ;
 int bfa_trc (struct bfa_sfp_s*,int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
bfa_sfp_show_comp(struct bfa_sfp_s *sfp, struct bfi_mbmsg_s *msg)
{
 struct bfi_sfp_rsp_s *rsp = (struct bfi_sfp_rsp_s *) msg;

 if (!sfp->lock) {



  bfa_trc(sfp, sfp->lock);
  return;
 }

 bfa_trc(sfp, rsp->status);
 if (rsp->status == BFA_STATUS_OK) {
  sfp->data_valid = 1;
  if (sfp->state == BFA_SFP_STATE_VALID)
   sfp->status = BFA_STATUS_OK;
  else if (sfp->state == BFA_SFP_STATE_UNSUPPORT)
   sfp->status = BFA_STATUS_SFP_UNSUPP;
  else
   bfa_trc(sfp, sfp->state);
 } else {
  sfp->data_valid = 0;
  sfp->status = rsp->status;

 }

 bfa_trc(sfp, sfp->memtype);
 if (sfp->memtype == BFI_SFP_MEM_DIAGEXT) {
  bfa_trc(sfp, sfp->data_valid);
  if (sfp->data_valid) {
   u32 size = sizeof(struct sfp_mem_s);
   u8 *des = (u8 *) &(sfp->sfpmem->srlid_base);
   memcpy(des, sfp->dbuf_kva, size);
  }



  bfa_cb_sfp_show(sfp);
 } else
  sfp->lock = 0;

 bfa_trc(sfp, sfp->state_query_lock);
 if (sfp->state_query_lock) {
  sfp->state = rsp->state;

  bfa_cb_sfp_state_query(sfp);
 }
}
