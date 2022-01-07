
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ msg_class; int msg_id; } ;
struct bfi_mbmsg_s {TYPE_1__ mh; } ;
struct bfi_ablk_i2h_rsp_s {int status; int pcifn; int port_mode; } ;
struct TYPE_5__ {int kva; } ;
struct bfa_ablk_s {int cbarg; int (* cbfn ) (int ,int ) ;int busy; int * pcifn; TYPE_3__* ioc; int * cfg; TYPE_2__ dma_addr; } ;
struct bfa_ablk_cfg_s {int dummy; } ;
typedef int (* bfa_ablk_cbfn_t ) (int ,int ) ;
struct TYPE_6__ {int port_mode_cfg; } ;


 int BFA_FALSE ;
 int BFA_STATUS_OK ;
 scalar_t__ BFI_MC_ABLK ;
 int WARN_ON (int) ;
 int bfa_ablk_config_swap (int *) ;
 int bfa_trc (TYPE_3__*,int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
bfa_ablk_isr(void *cbarg, struct bfi_mbmsg_s *msg)
{
 struct bfa_ablk_s *ablk = (struct bfa_ablk_s *)cbarg;
 struct bfi_ablk_i2h_rsp_s *rsp = (struct bfi_ablk_i2h_rsp_s *)msg;
 bfa_ablk_cbfn_t cbfn;

 WARN_ON(msg->mh.msg_class != BFI_MC_ABLK);
 bfa_trc(ablk->ioc, msg->mh.msg_id);

 switch (msg->mh.msg_id) {
 case 128:
  if (rsp->status == BFA_STATUS_OK) {
   memcpy(ablk->cfg, ablk->dma_addr.kva,
    sizeof(struct bfa_ablk_cfg_s));
   bfa_ablk_config_swap(ablk->cfg);
   ablk->cfg = ((void*)0);
  }
  break;

 case 135:
 case 129:

  ablk->ioc->port_mode_cfg = rsp->port_mode;

 case 131:
 case 130:
 case 133:
 case 134:

  break;

 case 132:
  *(ablk->pcifn) = rsp->pcifn;
  ablk->pcifn = ((void*)0);
  break;

 default:
  WARN_ON(1);
 }

 ablk->busy = BFA_FALSE;
 if (ablk->cbfn) {
  cbfn = ablk->cbfn;
  ablk->cbfn = ((void*)0);
  cbfn(ablk->cbarg, rsp->status);
 }
}
