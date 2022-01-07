
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct acpi_buffer {int member_0; char* member_1; } ;
typedef int acpi_method_name ;
struct TYPE_2__ {int dhandle; } ;


 int ACPI_FULL_PATHNAME ;
 int DRM_DEBUG_DRIVER (char*,char*) ;
 int PCI_CLASS_DISPLAY_VGA ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 int intel_dsm_pci_probe (struct pci_dev*) ;
 TYPE_1__ intel_dsm_priv ;
 struct pci_dev* pci_get_class (int,struct pci_dev*) ;

__attribute__((used)) static bool intel_dsm_detect(void)
{
 char acpi_method_name[255] = { 0 };
 struct acpi_buffer buffer = {sizeof(acpi_method_name), acpi_method_name};
 struct pci_dev *pdev = ((void*)0);
 bool has_dsm = 0;
 int vga_count = 0;

 while ((pdev = pci_get_class(PCI_CLASS_DISPLAY_VGA << 8, pdev)) != ((void*)0)) {
  vga_count++;
  has_dsm |= intel_dsm_pci_probe(pdev);
 }

 if (vga_count == 2 && has_dsm) {
  acpi_get_name(intel_dsm_priv.dhandle, ACPI_FULL_PATHNAME, &buffer);
  DRM_DEBUG_DRIVER("VGA switcheroo: detected DSM switching method %s handle\n",
     acpi_method_name);
  return 1;
 }

 return 0;
}
