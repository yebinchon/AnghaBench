
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct budget_patch {int dummy; } ;


 scalar_t__ COMMAND ;
 int DEBINOSWAP ;
 int dprintk (int,char*,struct budget_patch*) ;
 int msleep (int) ;
 int ttpci_budget_debiwrite (struct budget_patch*,int ,scalar_t__,int,int ,int ,int ) ;

__attribute__((used)) static int budget_av7110_send_fw_cmd(struct budget_patch *budget, u16* buf, int length)
{
 int i;

 dprintk(2, "budget: %p\n", budget);

 for (i = 2; i < length; i++)
 {
    ttpci_budget_debiwrite(budget, DEBINOSWAP, COMMAND + 2*i, 2, (u32) buf[i], 0,0);
    msleep(5);
 }
 if (length)
    ttpci_budget_debiwrite(budget, DEBINOSWAP, COMMAND + 2, 2, (u32) buf[1], 0,0);
 else
    ttpci_budget_debiwrite(budget, DEBINOSWAP, COMMAND + 2, 2, 0, 0,0);
 msleep(5);
 ttpci_budget_debiwrite(budget, DEBINOSWAP, COMMAND, 2, (u32) buf[0], 0,0);
 msleep(5);
 return 0;
}
