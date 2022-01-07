
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct pci_bus {unsigned char number; } ;
struct msp_pci_regs {unsigned long if_status; unsigned char config_addr; } ;


 unsigned char BPCI_CFGADDR_BUSNUM_SHF ;
 unsigned char BPCI_CFGADDR_ENABLE ;
 unsigned char BPCI_CFGADDR_FUNCTNUM_SHF ;
 unsigned long BPCI_IFSTATUS_BC0F ;
 unsigned long BPCI_IFSTATUS_BC1F ;
 int IRQF_DISABLED ;
 int IRQF_SHARED ;
 int MSP_INT_PCI ;
 int PCIBIOS_SUCCESSFUL ;
 unsigned char PCI_ACCESS_WRITE ;
 scalar_t__ PCI_BASE_REG ;
 unsigned long* PCI_CONFIG_SPACE_REG ;
 int bpci_interrupt ;
 int bpci_lock ;
 unsigned long cpu_to_le32 (unsigned long) ;
 unsigned int dvpe () ;
 int evpe (unsigned int) ;
 unsigned long le32_to_cpu (unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pci_proc_init () ;
 int proc_init ;
 int request_irq (int ,int ,int,char*,struct msp_pci_regs*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int msp_pcibios_config_access(unsigned char access_type,
    struct pci_bus *bus,
    unsigned int devfn,
    unsigned char where,
    u32 *data)
{
 struct msp_pci_regs *preg = (void *)PCI_BASE_REG;
 unsigned char bus_num = bus->number;
 unsigned char dev_fn = (unsigned char)devfn;
 unsigned long flags;
 unsigned long intr;
 unsigned long value;
 static char pciirqflag;
 int ret;
 if (pciirqflag == 0) {
  ret = request_irq(MSP_INT_PCI,
    bpci_interrupt,
    IRQF_SHARED | IRQF_DISABLED,
    "PMC MSP PCI Host",
    preg);
  if (ret != 0)
   return ret;
  pciirqflag = ~0;
 }





 spin_lock_irqsave(&bpci_lock, flags);
 preg->if_status = ~(BPCI_IFSTATUS_BC0F | BPCI_IFSTATUS_BC1F);


 preg->config_addr = BPCI_CFGADDR_ENABLE |
  (bus_num << BPCI_CFGADDR_BUSNUM_SHF) |
  (dev_fn << BPCI_CFGADDR_FUNCTNUM_SHF) |
  (where & 0xFC);


 if (access_type == PCI_ACCESS_WRITE) {
  value = cpu_to_le32(*data);
  *PCI_CONFIG_SPACE_REG = value;
 } else {

  value = le32_to_cpu(*PCI_CONFIG_SPACE_REG);
  *data = value;
 }





 intr = preg->if_status;


 preg->config_addr = 0;


 if (intr & ~(BPCI_IFSTATUS_BC0F | BPCI_IFSTATUS_BC1F)) {

  preg->if_status = ~(BPCI_IFSTATUS_BC0F | BPCI_IFSTATUS_BC1F);





  spin_unlock_irqrestore(&bpci_lock, flags);


  return -1;
 }





 spin_unlock_irqrestore(&bpci_lock, flags);


 return PCIBIOS_SUCCESSFUL;
}
