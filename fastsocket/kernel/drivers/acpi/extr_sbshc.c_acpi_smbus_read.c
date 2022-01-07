
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_smb_hc {int dummy; } ;


 int acpi_smbus_transaction (struct acpi_smb_hc*,int ,int ,int ,int *,int ) ;

int acpi_smbus_read(struct acpi_smb_hc *hc, u8 protocol, u8 address,
      u8 command, u8 *data)
{
 return acpi_smbus_transaction(hc, protocol, address, command, data, 0);
}
