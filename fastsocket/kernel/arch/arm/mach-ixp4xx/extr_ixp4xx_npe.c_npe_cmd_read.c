
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct npe {TYPE_1__* regs; } ;
struct TYPE_2__ {int exec_data; int exec_status_cmd; int exec_addr; } ;


 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;

__attribute__((used)) static u32 npe_cmd_read(struct npe *npe, u32 addr, int cmd)
{
 __raw_writel(addr, &npe->regs->exec_addr);
 __raw_writel(cmd, &npe->regs->exec_status_cmd);



 __raw_readl(&npe->regs->exec_data);
 __raw_readl(&npe->regs->exec_data);
 return __raw_readl(&npe->regs->exec_data);
}
