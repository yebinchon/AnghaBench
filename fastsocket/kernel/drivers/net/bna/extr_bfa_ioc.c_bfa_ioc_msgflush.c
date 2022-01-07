
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int lpu_mbox_cmd; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 scalar_t__ readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_ioc_msgflush(struct bfa_ioc *ioc)
{
 u32 r32;

 r32 = readl(ioc->ioc_regs.lpu_mbox_cmd);
 if (r32)
  writel(1, ioc->ioc_regs.lpu_mbox_cmd);
}
