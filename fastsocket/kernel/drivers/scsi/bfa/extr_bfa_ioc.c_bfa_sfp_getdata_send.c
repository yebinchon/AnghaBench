
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_sfp_req_s {int mh; int memtype; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_sfp_s {TYPE_1__ mbcmd; int ioc; } ;


 int BFI_MC_SFP ;
 int BFI_SFP_H2I_SHOW ;
 int bfa_ioc_mbox_queue (int ,TYPE_1__*) ;
 int bfa_ioc_portid (int ) ;
 int bfa_trc (struct bfa_sfp_s*,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_sfp_getdata_send(struct bfa_sfp_s *sfp)
{
 struct bfi_sfp_req_s *req = (struct bfi_sfp_req_s *)sfp->mbcmd.msg;

 bfa_trc(sfp, req->memtype);


 bfi_h2i_set(req->mh, BFI_MC_SFP, BFI_SFP_H2I_SHOW,
   bfa_ioc_portid(sfp->ioc));


 bfa_ioc_mbox_queue(sfp->ioc, &sfp->mbcmd);
}
