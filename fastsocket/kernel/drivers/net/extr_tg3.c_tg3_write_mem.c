
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tg3 {int indirect_lock; int pdev; } ;


 scalar_t__ ASIC_REV_5906 ;
 scalar_t__ NIC_SRAM_STATS_BLK ;
 scalar_t__ NIC_SRAM_TX_BUFFER_DESC ;
 int SRAM_USE_CONFIG ;
 int TG3PCI_MEM_WIN_BASE_ADDR ;
 int TG3PCI_MEM_WIN_DATA ;
 int pci_write_config_dword (int ,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tw32_f (int ,scalar_t__) ;

__attribute__((used)) static void tg3_write_mem(struct tg3 *tp, u32 off, u32 val)
{
 unsigned long flags;

 if (tg3_asic_rev(tp) == ASIC_REV_5906 &&
     (off >= NIC_SRAM_STATS_BLK) && (off < NIC_SRAM_TX_BUFFER_DESC))
  return;

 spin_lock_irqsave(&tp->indirect_lock, flags);
 if (tg3_flag(tp, SRAM_USE_CONFIG)) {
  pci_write_config_dword(tp->pdev, TG3PCI_MEM_WIN_BASE_ADDR, off);
  pci_write_config_dword(tp->pdev, TG3PCI_MEM_WIN_DATA, val);


  pci_write_config_dword(tp->pdev, TG3PCI_MEM_WIN_BASE_ADDR, 0);
 } else {
  tw32_f(TG3PCI_MEM_WIN_BASE_ADDR, off);
  tw32_f(TG3PCI_MEM_WIN_DATA, val);


  tw32_f(TG3PCI_MEM_WIN_BASE_ADDR, 0);
 }
 spin_unlock_irqrestore(&tp->indirect_lock, flags);
}
