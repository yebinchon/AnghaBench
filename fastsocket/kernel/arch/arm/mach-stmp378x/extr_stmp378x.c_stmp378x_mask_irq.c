
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BM_ICOLL_INTERRUPTn_ENABLE ;
 scalar_t__ HW_ICOLL_INTERRUPTn ;
 scalar_t__ REGS_ICOLL_BASE ;
 int stmp3xxx_clearl (int ,scalar_t__) ;

__attribute__((used)) static void stmp378x_mask_irq(unsigned int irq)
{

 stmp3xxx_clearl(BM_ICOLL_INTERRUPTn_ENABLE,
   REGS_ICOLL_BASE + HW_ICOLL_INTERRUPTn + irq * 0x10);
}
