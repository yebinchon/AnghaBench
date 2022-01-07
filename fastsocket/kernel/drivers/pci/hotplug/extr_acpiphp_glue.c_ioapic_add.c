
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct acpiphp_ioapic {int list; struct pci_dev* dev; int gsi_base; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 unsigned long long ACPI_STA_ALL ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_CTRL_DEPTH ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int GFP_KERNEL ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_get_handle (int ,char*,int *) ;
 scalar_t__ acpi_register_ioapic (int ,int ,int ) ;
 struct pci_dev* get_apic_pci_info (int ) ;
 scalar_t__ get_gsi_base (int ,int *) ;
 int ioapic_list ;
 int ioapic_list_lock ;
 int kfree (struct acpiphp_ioapic*) ;
 struct acpiphp_ioapic* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int ) ;
 scalar_t__ pci_request_region (struct pci_dev*,int ,char*) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static acpi_status
ioapic_add(acpi_handle handle, u32 lvl, void *context, void **rv)
{
 acpi_status status;
 unsigned long long sta;
 acpi_handle tmp;
 struct pci_dev *pdev;
 u32 gsi_base;
 u64 phys_addr;
 struct acpiphp_ioapic *ioapic;


 status = acpi_evaluate_integer(handle, "_STA", ((void*)0), &sta);
 if (ACPI_SUCCESS(status) && sta != ACPI_STA_ALL)
  return AE_CTRL_DEPTH;


 status = acpi_get_handle(handle, "_HID", &tmp);
 if (ACPI_SUCCESS(status))
  return AE_CTRL_DEPTH;

 if (get_gsi_base(handle, &gsi_base))
  return AE_OK;

 ioapic = kmalloc(sizeof(*ioapic), GFP_KERNEL);
 if (!ioapic)
  return AE_NO_MEMORY;

 pdev = get_apic_pci_info(handle);
 if (!pdev)
  goto exit_kfree;

 if (pci_enable_device(pdev))
  goto exit_pci_dev_put;

 pci_set_master(pdev);

 if (pci_request_region(pdev, 0, "I/O APIC(acpiphp)"))
  goto exit_pci_disable_device;

 phys_addr = pci_resource_start(pdev, 0);
 if (acpi_register_ioapic(handle, phys_addr, gsi_base))
  goto exit_pci_release_region;

 ioapic->gsi_base = gsi_base;
 ioapic->dev = pdev;
 spin_lock(&ioapic_list_lock);
 list_add_tail(&ioapic->list, &ioapic_list);
 spin_unlock(&ioapic_list_lock);

 return AE_OK;

 exit_pci_release_region:
 pci_release_region(pdev, 0);
 exit_pci_disable_device:
 pci_disable_device(pdev);
 exit_pci_dev_put:
 pci_dev_put(pdev);
 exit_kfree:
 kfree(ioapic);

 return AE_OK;
}
