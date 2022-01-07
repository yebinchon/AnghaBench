
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct acpi_sbs {int charger_present; int hc; } ;


 int ACPI_SBS_CHARGER ;
 int SMBUS_READ_WORD ;
 int acpi_smbus_read (int ,int ,int ,int,int *) ;

__attribute__((used)) static int acpi_ac_get_present(struct acpi_sbs *sbs)
{
 int result;
 u16 status;

 result = acpi_smbus_read(sbs->hc, SMBUS_READ_WORD, ACPI_SBS_CHARGER,
     0x13, (u8 *) & status);
 if (!result)
  sbs->charger_present = (status >> 15) & 0x1;
 return result;
}
