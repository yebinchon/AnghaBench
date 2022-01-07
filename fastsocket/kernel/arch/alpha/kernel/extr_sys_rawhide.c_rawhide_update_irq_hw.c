
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vuip ;


 int MCPCIA_HOSE2MID (int) ;
 scalar_t__ MCPCIA_INT_MASK0 (int ) ;
 int mb () ;

__attribute__((used)) static inline void
rawhide_update_irq_hw(int hose, int mask)
{
 *(vuip)MCPCIA_INT_MASK0(MCPCIA_HOSE2MID(hose)) = mask;
 mb();
 *(vuip)MCPCIA_INT_MASK0(MCPCIA_HOSE2MID(hose));
}
