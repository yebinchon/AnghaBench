
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct bfi_diag_qtest_req_s {int mh; int * data; } ;
struct TYPE_2__ {int queue; } ;
struct bfa_fcdiag_s {TYPE_1__ qtest; int bfa; } ;
typedef int bfa_status_t ;


 int BFA_STATUS_DEVBUSY ;
 int BFA_STATUS_OK ;
 int BFI_DIAG_H2I_QTEST ;
 size_t BFI_LMSG_PL_WSZ ;
 int BFI_MC_DIAG ;
 int QTEST_PAT_DEFAULT ;
 int bfa_fn_lpu (int ) ;
 struct bfi_diag_qtest_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_trc (struct bfa_fcdiag_s*,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static bfa_status_t
bfa_fcdiag_queuetest_send(struct bfa_fcdiag_s *fcdiag)
{
 u32 i;
 struct bfi_diag_qtest_req_s *req;

 req = bfa_reqq_next(fcdiag->bfa, fcdiag->qtest.queue);
 if (!req)
  return BFA_STATUS_DEVBUSY;


 bfi_h2i_set(req->mh, BFI_MC_DIAG, BFI_DIAG_H2I_QTEST,
  bfa_fn_lpu(fcdiag->bfa));

 for (i = 0; i < BFI_LMSG_PL_WSZ; i++)
  req->data[i] = QTEST_PAT_DEFAULT;

 bfa_trc(fcdiag, fcdiag->qtest.queue);

 bfa_reqq_produce(fcdiag->bfa, fcdiag->qtest.queue, req->mh);
 return BFA_STATUS_OK;
}
