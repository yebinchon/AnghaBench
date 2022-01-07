
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int indirect_lock; int pdev; } ;


 int TG3PCI_REG_BASE_ADDR ;
 int TG3PCI_REG_DATA ;
 int pci_write_config_dword (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void tg3_write_indirect_reg32(struct tg3 *tp, u32 off, u32 val)
{
 unsigned long flags;

 spin_lock_irqsave(&tp->indirect_lock, flags);
 pci_write_config_dword(tp->pdev, TG3PCI_REG_BASE_ADDR, off);
 pci_write_config_dword(tp->pdev, TG3PCI_REG_DATA, val);
 spin_unlock_irqrestore(&tp->indirect_lock, flags);
}
