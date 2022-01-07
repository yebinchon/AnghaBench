
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ioc_fail_sync; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;


 int bfa_ioc_ct_sync_reqd_pos (struct bfa_ioc_s*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_ioc_ct_sync_join(struct bfa_ioc_s *ioc)
{
 uint32_t r32 = readl(ioc->ioc_regs.ioc_fail_sync);
 uint32_t sync_pos = bfa_ioc_ct_sync_reqd_pos(ioc);

 writel((r32 | sync_pos), ioc->ioc_regs.ioc_fail_sync);
}
