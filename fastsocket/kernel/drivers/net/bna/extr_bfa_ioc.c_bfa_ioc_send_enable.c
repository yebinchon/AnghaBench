
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct bfi_ioc_ctrl_req {int tv_sec; int clscode; int mh; } ;
struct bfa_ioc {int clscode; } ;


 int BFI_IOC_H2I_ENABLE_REQ ;
 int BFI_MC_IOC ;
 int bfa_ioc_mbox_send (struct bfa_ioc*,struct bfi_ioc_ctrl_req*,int) ;
 int bfa_ioc_portid (struct bfa_ioc*) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int do_gettimeofday (struct timeval*) ;
 int htons (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static void
bfa_ioc_send_enable(struct bfa_ioc *ioc)
{
 struct bfi_ioc_ctrl_req enable_req;
 struct timeval tv;

 bfi_h2i_set(enable_req.mh, BFI_MC_IOC, BFI_IOC_H2I_ENABLE_REQ,
      bfa_ioc_portid(ioc));
 enable_req.clscode = htons(ioc->clscode);
 do_gettimeofday(&tv);
 enable_req.tv_sec = ntohl(tv.tv_sec);
 bfa_ioc_mbox_send(ioc, &enable_req, sizeof(struct bfi_ioc_ctrl_req));
}
