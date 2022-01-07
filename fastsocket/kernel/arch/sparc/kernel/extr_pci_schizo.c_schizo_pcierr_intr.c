
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {unsigned long pbm_regs; int pci_bus; int name; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PCI_ERR ;
 unsigned long SCHIZO_PCIAFSR_BLK ;
 unsigned long SCHIZO_PCIAFSR_BMSK ;
 unsigned long SCHIZO_PCIAFSR_CFG ;
 unsigned long SCHIZO_PCIAFSR_IO ;
 unsigned long SCHIZO_PCIAFSR_MEM ;
 unsigned long SCHIZO_PCIAFSR_PMA ;
 unsigned long SCHIZO_PCIAFSR_PPERR ;
 unsigned long SCHIZO_PCIAFSR_PRTRY ;
 unsigned long SCHIZO_PCIAFSR_PTA ;
 unsigned long SCHIZO_PCIAFSR_PTTO ;
 unsigned long SCHIZO_PCIAFSR_PUNUS ;
 unsigned long SCHIZO_PCIAFSR_SMA ;
 unsigned long SCHIZO_PCIAFSR_SPERR ;
 unsigned long SCHIZO_PCIAFSR_SRTRY ;
 unsigned long SCHIZO_PCIAFSR_STA ;
 unsigned long SCHIZO_PCIAFSR_STTO ;
 unsigned long SCHIZO_PCIAFSR_SUNUS ;
 unsigned long SCHIZO_PCI_AFAR ;
 unsigned long SCHIZO_PCI_AFSR ;
 int pci_scan_for_master_abort (struct pci_pbm_info*,int ) ;
 int pci_scan_for_parity_error (struct pci_pbm_info*,int ) ;
 int pci_scan_for_target_abort (struct pci_pbm_info*,int ) ;
 int printk (char*,...) ;
 int schizo_check_iommu_error (struct pci_pbm_info*,int ) ;
 int schizo_pcierr_intr_other (struct pci_pbm_info*) ;
 unsigned long upa_readq (unsigned long) ;
 int upa_writeq (unsigned long,unsigned long) ;

__attribute__((used)) static irqreturn_t schizo_pcierr_intr(int irq, void *dev_id)
{
 struct pci_pbm_info *pbm = dev_id;
 unsigned long afsr_reg, afar_reg, base;
 unsigned long afsr, afar, error_bits;
 int reported;

 base = pbm->pbm_regs;

 afsr_reg = base + SCHIZO_PCI_AFSR;
 afar_reg = base + SCHIZO_PCI_AFAR;


 afar = upa_readq(afar_reg);
 afsr = upa_readq(afsr_reg);


 error_bits = afsr &
  (SCHIZO_PCIAFSR_PMA | SCHIZO_PCIAFSR_PTA |
   SCHIZO_PCIAFSR_PRTRY | SCHIZO_PCIAFSR_PPERR |
   SCHIZO_PCIAFSR_PTTO | SCHIZO_PCIAFSR_PUNUS |
   SCHIZO_PCIAFSR_SMA | SCHIZO_PCIAFSR_STA |
   SCHIZO_PCIAFSR_SRTRY | SCHIZO_PCIAFSR_SPERR |
   SCHIZO_PCIAFSR_STTO | SCHIZO_PCIAFSR_SUNUS);
 if (!error_bits)
  return schizo_pcierr_intr_other(pbm);
 upa_writeq(error_bits, afsr_reg);


 printk("%s: PCI Error, primary error type[%s]\n",
        pbm->name,
        (((error_bits & SCHIZO_PCIAFSR_PMA) ?
   "Master Abort" :
   ((error_bits & SCHIZO_PCIAFSR_PTA) ?
    "Target Abort" :
    ((error_bits & SCHIZO_PCIAFSR_PRTRY) ?
     "Excessive Retries" :
     ((error_bits & SCHIZO_PCIAFSR_PPERR) ?
      "Parity Error" :
      ((error_bits & SCHIZO_PCIAFSR_PTTO) ?
       "Timeout" :
       ((error_bits & SCHIZO_PCIAFSR_PUNUS) ?
        "Bus Unusable" : "???"))))))));
 printk("%s: bytemask[%04lx] was_block(%d) space(%s)\n",
        pbm->name,
        (afsr & SCHIZO_PCIAFSR_BMSK) >> 32UL,
        (afsr & SCHIZO_PCIAFSR_BLK) ? 1 : 0,
        ((afsr & SCHIZO_PCIAFSR_CFG) ?
  "Config" :
  ((afsr & SCHIZO_PCIAFSR_MEM) ?
   "Memory" :
   ((afsr & SCHIZO_PCIAFSR_IO) ?
    "I/O" : "???"))));
 printk("%s: PCI AFAR [%016lx]\n",
        pbm->name, afar);
 printk("%s: PCI Secondary errors [",
        pbm->name);
 reported = 0;
 if (afsr & SCHIZO_PCIAFSR_SMA) {
  reported++;
  printk("(Master Abort)");
 }
 if (afsr & SCHIZO_PCIAFSR_STA) {
  reported++;
  printk("(Target Abort)");
 }
 if (afsr & SCHIZO_PCIAFSR_SRTRY) {
  reported++;
  printk("(Excessive Retries)");
 }
 if (afsr & SCHIZO_PCIAFSR_SPERR) {
  reported++;
  printk("(Parity Error)");
 }
 if (afsr & SCHIZO_PCIAFSR_STTO) {
  reported++;
  printk("(Timeout)");
 }
 if (afsr & SCHIZO_PCIAFSR_SUNUS) {
  reported++;
  printk("(Bus Unusable)");
 }
 if (!reported)
  printk("(none)");
 printk("]\n");
 if (error_bits & (SCHIZO_PCIAFSR_PTA | SCHIZO_PCIAFSR_STA)) {
  schizo_check_iommu_error(pbm, PCI_ERR);
  pci_scan_for_target_abort(pbm, pbm->pci_bus);
 }
 if (error_bits & (SCHIZO_PCIAFSR_PMA | SCHIZO_PCIAFSR_SMA))
  pci_scan_for_master_abort(pbm, pbm->pci_bus);
 if (error_bits & (SCHIZO_PCIAFSR_PPERR | SCHIZO_PCIAFSR_SPERR))
  pci_scan_for_parity_error(pbm, pbm->pci_bus);

 return IRQ_HANDLED;
}
