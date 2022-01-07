
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ hfn_mbox_cmd; scalar_t__ hfn_mbox; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 int BFI_IOC_MSGLEN_MAX ;
 int BUG_ON (int) ;
 int cpu_to_le32 (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
bfa_ioc_mbox_send(struct bfa_ioc *ioc, void *ioc_msg, int len)
{
 u32 *msgp = (u32 *) ioc_msg;
 u32 i;

 BUG_ON(!(len <= BFI_IOC_MSGLEN_MAX));




 for (i = 0; i < len / sizeof(u32); i++)
  writel(cpu_to_le32(msgp[i]),
         ioc->ioc_regs.hfn_mbox + i * sizeof(u32));

 for (; i < BFI_IOC_MSGLEN_MAX / sizeof(u32); i++)
  writel(0, ioc->ioc_regs.hfn_mbox + i * sizeof(u32));




 writel(1, ioc->ioc_regs.hfn_mbox_cmd);
 (void) readl(ioc->ioc_regs.hfn_mbox_cmd);
}
