
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct npe {TYPE_1__* regs; } ;
struct TYPE_2__ {int exec_status_cmd; int exec_addr; int exec_data; } ;


 int __raw_writel (int,int *) ;

__attribute__((used)) static void npe_cmd_write(struct npe *npe, u32 addr, int cmd, u32 data)
{
 __raw_writel(data, &npe->regs->exec_data);
 __raw_writel(addr, &npe->regs->exec_addr);
 __raw_writel(cmd, &npe->regs->exec_status_cmd);
}
