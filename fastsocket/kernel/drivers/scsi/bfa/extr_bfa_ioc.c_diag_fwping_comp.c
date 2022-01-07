
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct bfi_diag_fwping_rsp_s {scalar_t__ data; scalar_t__ dma_status; } ;
struct TYPE_4__ {int count; scalar_t__ data; scalar_t__ lock; void* status; int cbarg; int (* cbfn ) (int ,void*) ;TYPE_1__* result; scalar_t__ dbuf_kva; } ;
struct bfa_diag_s {TYPE_2__ fwping; } ;
struct TYPE_3__ {void* dmastatus; } ;


 void* BFA_STATUS_DATACORRUPTED ;
 void* BFA_STATUS_HDMA_FAILED ;
 scalar_t__ BFA_STATUS_OK ;
 int BFI_DIAG_DMA_BUF_SZ ;
 int bfa_trc (struct bfa_diag_s*,scalar_t__) ;
 int stub1 (int ,void*) ;
 int stub2 (int ,void*) ;
 int stub3 (int ,void*) ;
 int stub4 (int ,void*) ;

__attribute__((used)) static void
diag_fwping_comp(struct bfa_diag_s *diag,
   struct bfi_diag_fwping_rsp_s *diag_rsp)
{
 u32 rsp_data = diag_rsp->data;
 u8 rsp_dma_status = diag_rsp->dma_status;

 bfa_trc(diag, rsp_data);
 bfa_trc(diag, rsp_dma_status);

 if (rsp_dma_status == BFA_STATUS_OK) {
  u32 i, pat;
  pat = (diag->fwping.count & 0x1) ? ~(diag->fwping.data) :
   diag->fwping.data;

  if (diag->fwping.data != rsp_data) {
   bfa_trc(diag, rsp_data);
   diag->fwping.result->dmastatus =
     BFA_STATUS_DATACORRUPTED;
   diag->fwping.status = BFA_STATUS_DATACORRUPTED;
   diag->fwping.cbfn(diag->fwping.cbarg,
     diag->fwping.status);
   diag->fwping.lock = 0;
   return;
  }

  for (i = 0; i < (BFI_DIAG_DMA_BUF_SZ >> 2); i++) {
   if (*((u32 *)diag->fwping.dbuf_kva + i) != pat) {
    bfa_trc(diag, i);
    bfa_trc(diag, pat);
    bfa_trc(diag,
     *((u32 *)diag->fwping.dbuf_kva + i));
    diag->fwping.result->dmastatus =
      BFA_STATUS_DATACORRUPTED;
    diag->fwping.status = BFA_STATUS_DATACORRUPTED;
    diag->fwping.cbfn(diag->fwping.cbarg,
      diag->fwping.status);
    diag->fwping.lock = 0;
    return;
   }
  }
  diag->fwping.result->dmastatus = BFA_STATUS_OK;
  diag->fwping.status = BFA_STATUS_OK;
  diag->fwping.cbfn(diag->fwping.cbarg, diag->fwping.status);
  diag->fwping.lock = 0;
 } else {
  diag->fwping.status = BFA_STATUS_HDMA_FAILED;
  diag->fwping.cbfn(diag->fwping.cbarg, diag->fwping.status);
  diag->fwping.lock = 0;
 }
}
