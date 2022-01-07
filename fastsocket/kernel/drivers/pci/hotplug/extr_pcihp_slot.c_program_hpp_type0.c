
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int class; int dev; } ;
struct hpp_type0 {int revision; scalar_t__ enable_perr; scalar_t__ enable_serr; int latency_timer; int cache_line_size; } ;


 int PCI_BRIDGE_CONTROL ;
 int PCI_BRIDGE_CTL_PARITY ;
 int PCI_BRIDGE_CTL_SERR ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_CLASS_BRIDGE_PCI ;
 int PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int PCI_LATENCY_TIMER ;
 int PCI_SEC_LATENCY_TIMER ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 struct hpp_type0 pci_default_type0 ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_write_config_byte (struct pci_dev*,int ,int ) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void program_hpp_type0(struct pci_dev *dev, struct hpp_type0 *hpp)
{
 u16 pci_cmd, pci_bctl;

 if (!hpp) {




  if (pci_is_pcie(dev))
   return;
  dev_info(&dev->dev, "using default PCI settings\n");
  hpp = &pci_default_type0;
 }

 if (hpp->revision > 1) {
  dev_warn(&dev->dev,
    "PCI settings rev %d not supported; using defaults\n",
    hpp->revision);
  hpp = &pci_default_type0;
 }

 pci_write_config_byte(dev, PCI_CACHE_LINE_SIZE, hpp->cache_line_size);
 pci_write_config_byte(dev, PCI_LATENCY_TIMER, hpp->latency_timer);
 pci_read_config_word(dev, PCI_COMMAND, &pci_cmd);
 if (hpp->enable_serr)
  pci_cmd |= PCI_COMMAND_SERR;
 else
  pci_cmd &= ~PCI_COMMAND_SERR;
 if (hpp->enable_perr)
  pci_cmd |= PCI_COMMAND_PARITY;
 else
  pci_cmd &= ~PCI_COMMAND_PARITY;
 pci_write_config_word(dev, PCI_COMMAND, pci_cmd);


 if ((dev->class >> 8) == PCI_CLASS_BRIDGE_PCI) {
  pci_write_config_byte(dev, PCI_SEC_LATENCY_TIMER,
          hpp->latency_timer);
  pci_read_config_word(dev, PCI_BRIDGE_CONTROL, &pci_bctl);
  if (hpp->enable_serr)
   pci_bctl |= PCI_BRIDGE_CTL_SERR;
  else
   pci_bctl &= ~PCI_BRIDGE_CTL_SERR;
  if (hpp->enable_perr)
   pci_bctl |= PCI_BRIDGE_CTL_PARITY;
  else
   pci_bctl &= ~PCI_BRIDGE_CTL_PARITY;
  pci_write_config_word(dev, PCI_BRIDGE_CONTROL, pci_bctl);
 }
}
