
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; } ;
typedef int pci_power_t ;
typedef int acpi_handle ;






 scalar_t__ ACPI_SUCCESS (int ) ;
 int DEVICE_ACPI_HANDLE (int *) ;
 int EINVAL ;
 int ENODEV ;
 int KERN_INFO ;





 int acpi_bus_set_power (int ,int const) ;
 int acpi_get_handle (int ,char*,int *) ;
 int dev_printk (int ,int *,char*,int) ;

__attribute__((used)) static int acpi_pci_set_power_state(struct pci_dev *dev, pci_power_t state)
{
 acpi_handle handle = DEVICE_ACPI_HANDLE(&dev->dev);
 acpi_handle tmp;
 static const u8 state_conv[] = {
  [132] = 136,
  [131] = 135,
  [130] = 134,
  [128] = 133,
  [129] = 133
 };
 int error = -EINVAL;


 if (!handle || ACPI_SUCCESS(acpi_get_handle(handle, "_EJ0", &tmp)))
  return -ENODEV;

 switch (state) {
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:
  error = acpi_bus_set_power(handle, state_conv[state]);
 }

 if (!error)
  dev_printk(KERN_INFO, &dev->dev,
    "power state changed by ACPI to D%d\n", state);

 return error;
}
