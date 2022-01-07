
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ioc_fail_sync; int alt_ioc_fwstate; int ioc_fwstate; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int BFI_IOC_FAIL ;
 int bfa_ioc_ct_clear_sync_ackd (int) ;
 int bfa_ioc_ct_get_sync_ackd (int) ;
 int bfa_ioc_ct_get_sync_reqd (int) ;
 int bfa_ioc_ct_sync_pos (struct bfa_ioc_s*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_ioc_ct_sync_complete(struct bfa_ioc_s *ioc)
{
 uint32_t r32 = readl(ioc->ioc_regs.ioc_fail_sync);
 uint32_t sync_reqd = bfa_ioc_ct_get_sync_reqd(r32);
 uint32_t sync_ackd = bfa_ioc_ct_get_sync_ackd(r32);
 uint32_t tmp_ackd;

 if (sync_ackd == 0)
  return BFA_TRUE;







 tmp_ackd = sync_ackd;
 if ((sync_reqd & bfa_ioc_ct_sync_pos(ioc)) &&
  !(sync_ackd & bfa_ioc_ct_sync_pos(ioc)))
  sync_ackd |= bfa_ioc_ct_sync_pos(ioc);

 if (sync_reqd == sync_ackd) {
  writel(bfa_ioc_ct_clear_sync_ackd(r32),
   ioc->ioc_regs.ioc_fail_sync);
  writel(BFI_IOC_FAIL, ioc->ioc_regs.ioc_fwstate);
  writel(BFI_IOC_FAIL, ioc->ioc_regs.alt_ioc_fwstate);
  return BFA_TRUE;
 }






 if (tmp_ackd != sync_ackd)
  writel((r32 | sync_ackd), ioc->ioc_regs.ioc_fail_sync);

 return BFA_FALSE;
}
