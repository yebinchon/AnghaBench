
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_IXP4XX_QM1 ;
 int IRQ_IXP4XX_QM2 ;
 int IXP4XX_QMGR_BASE_PHYS ;
 int IXP4XX_QMGR_REGION_SIZE ;
 int free_irq (int ,int *) ;
 int iounmap (int ) ;
 int qmgr_regs ;
 int release_mem_region (int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void qmgr_remove(void)
{
 free_irq(IRQ_IXP4XX_QM1, ((void*)0));
 free_irq(IRQ_IXP4XX_QM2, ((void*)0));
 synchronize_irq(IRQ_IXP4XX_QM1);
 synchronize_irq(IRQ_IXP4XX_QM2);
 iounmap(qmgr_regs);
 release_mem_region(IXP4XX_QMGR_BASE_PHYS, IXP4XX_QMGR_REGION_SIZE);
}
