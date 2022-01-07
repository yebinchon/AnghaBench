
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {int dev; } ;
struct msix_entry {unsigned int vector; int member_1; int member_0; } ;


 int PVSCSI_VECTOR_COMPLETION ;
 int pci_enable_msix (int ,struct msix_entry*,int) ;

__attribute__((used)) static int pvscsi_setup_msix(const struct pvscsi_adapter *adapter,
        unsigned int *irq)
{
 struct msix_entry entry = { 0, PVSCSI_VECTOR_COMPLETION };
 int ret;

 ret = pci_enable_msix(adapter->dev, &entry, 1);
 if (ret)
  return ret;

 *irq = entry.vector;

 return 0;
}
