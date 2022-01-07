
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_ioc_ctrl_req_s {int mh; } ;
struct bfa_ioc_s {int dummy; } ;


 int BFI_IOC_H2I_DISABLE_REQ ;
 int BFI_MC_IOC ;
 int bfa_ioc_mbox_send (struct bfa_ioc_s*,struct bfi_ioc_ctrl_req_s*,int) ;
 int bfa_ioc_portid (struct bfa_ioc_s*) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_ioc_send_disable(struct bfa_ioc_s *ioc)
{
 struct bfi_ioc_ctrl_req_s disable_req;

 bfi_h2i_set(disable_req.mh, BFI_MC_IOC, BFI_IOC_H2I_DISABLE_REQ,
      bfa_ioc_portid(ioc));
 bfa_ioc_mbox_send(ioc, &disable_req, sizeof(struct bfi_ioc_ctrl_req_s));
}
