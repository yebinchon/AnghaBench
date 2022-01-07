
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct npe {TYPE_1__* regs; } ;
struct TYPE_2__ {int exec_status_cmd; } ;


 int CMD_NPE_CLR_PIPE ;
 int CMD_NPE_START ;
 int ECS_DBG_CTXT_REG_0 ;
 int ECS_PRI_1_CTXT_REG_0 ;
 int ECS_PRI_2_CTXT_REG_0 ;
 int __raw_writel (int ,int *) ;
 int npe_clear_active (struct npe*,int ) ;

__attribute__((used)) static void npe_start(struct npe *npe)
{

 npe_clear_active(npe, ECS_PRI_1_CTXT_REG_0);
 npe_clear_active(npe, ECS_PRI_2_CTXT_REG_0);
 npe_clear_active(npe, ECS_DBG_CTXT_REG_0);

 __raw_writel(CMD_NPE_CLR_PIPE, &npe->regs->exec_status_cmd);
 __raw_writel(CMD_NPE_START, &npe->regs->exec_status_cmd);
}
