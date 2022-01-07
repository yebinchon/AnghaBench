
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int pdev; scalar_t__ regs; } ;


 int BIM_LOCAL_DEV_SOFT_0 ;
 scalar_t__ REG_BIM_LOCAL_DEV_EN ;
 int pci_restore_state (int ) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void cas_hard_reset(struct cas *cp)
{
 writel(BIM_LOCAL_DEV_SOFT_0, cp->regs + REG_BIM_LOCAL_DEV_EN);
 udelay(20);
 pci_restore_state(cp->pdev);
}
