
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {int dummy; } ;


 int CNTLREG_WRITE_ENABLE_MASK ;
 int XTE_CTL0_OFFSET ;
 int XTE_LSW0_OFFSET ;
 scalar_t__ temac_indirect_busywait (struct temac_local*) ;
 int temac_iow (struct temac_local*,int ,int) ;

void temac_indirect_out32(struct temac_local *lp, int reg, u32 value)
{
 if (temac_indirect_busywait(lp))
  return;
 temac_iow(lp, XTE_LSW0_OFFSET, value);
 temac_iow(lp, XTE_CTL0_OFFSET, CNTLREG_WRITE_ENABLE_MASK | reg);
}
