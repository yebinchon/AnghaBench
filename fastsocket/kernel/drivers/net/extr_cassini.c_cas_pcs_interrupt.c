
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct cas {scalar_t__ regs; } ;


 int PCS_INTR_STATUS_LINK_CHANGE ;
 scalar_t__ REG_PCS_INTR_STATUS ;
 int cas_pcs_link_check (struct cas*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int cas_pcs_interrupt(struct net_device *dev,
        struct cas *cp, u32 status)
{
 u32 stat = readl(cp->regs + REG_PCS_INTR_STATUS);

 if ((stat & PCS_INTR_STATUS_LINK_CHANGE) == 0)
  return 0;
 return cas_pcs_link_check(cp);
}
