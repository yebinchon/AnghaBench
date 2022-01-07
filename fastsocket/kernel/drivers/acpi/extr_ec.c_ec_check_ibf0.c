
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_ec {int dummy; } ;


 int ACPI_EC_FLAG_IBF ;
 int acpi_ec_read_status (struct acpi_ec*) ;

__attribute__((used)) static int ec_check_ibf0(struct acpi_ec *ec)
{
 u8 status = acpi_ec_read_status(ec);
 return (status & ACPI_EC_FLAG_IBF) == 0;
}
