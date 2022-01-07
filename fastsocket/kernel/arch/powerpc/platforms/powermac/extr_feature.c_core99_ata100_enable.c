
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;


 long ENODEV ;
 int LOCK (unsigned long) ;
 int UNI_N_CLOCK_CNTL ;
 int UNI_N_CLOCK_CNTL_ATA100 ;
 int UNLOCK (unsigned long) ;
 int UN_BIC (int ,int ) ;
 int UN_BIS (int ,int ) ;
 int UN_IN (int ) ;
 int pci_dev_put (struct pci_dev*) ;
 scalar_t__ pci_device_from_OF_node (struct device_node*,int *,int *) ;
 int pci_enable_device (struct pci_dev*) ;
 struct pci_dev* pci_get_bus_and_slot (int ,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int udelay (int) ;
 int uninorth_rev ;

__attribute__((used)) static long
core99_ata100_enable(struct device_node *node, long value)
{
 unsigned long flags;
 struct pci_dev *pdev = ((void*)0);
 u8 pbus, pid;
 int rc;

 if (uninorth_rev < 0x24)
  return -ENODEV;

 LOCK(flags);
 if (value)
  UN_BIS(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_ATA100);
 else
  UN_BIC(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_ATA100);
 (void)UN_IN(UNI_N_CLOCK_CNTL);
 UNLOCK(flags);
 udelay(20);

 if (value) {
  if (pci_device_from_OF_node(node, &pbus, &pid) == 0)
   pdev = pci_get_bus_and_slot(pbus, pid);
  if (pdev == ((void*)0))
   return 0;
  rc = pci_enable_device(pdev);
  if (rc == 0)
   pci_set_master(pdev);
  pci_dev_put(pdev);
  if (rc)
   return rc;
 }
 return 0;
}
