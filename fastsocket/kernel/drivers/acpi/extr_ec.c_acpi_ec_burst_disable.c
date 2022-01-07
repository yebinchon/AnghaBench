
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transaction {int rlen; int wlen; int * rdata; int * wdata; int command; } ;
struct acpi_ec {int dummy; } ;


 int ACPI_EC_BURST_DISABLE ;
 int ACPI_EC_FLAG_BURST ;
 int acpi_ec_read_status (struct acpi_ec*) ;
 int acpi_ec_transaction (struct acpi_ec*,struct transaction*) ;

__attribute__((used)) static int acpi_ec_burst_disable(struct acpi_ec *ec)
{
 struct transaction t = {.command = ACPI_EC_BURST_DISABLE,
    .wdata = ((void*)0), .rdata = ((void*)0),
    .wlen = 0, .rlen = 0};

 return (acpi_ec_read_status(ec) & ACPI_EC_FLAG_BURST) ?
    acpi_ec_transaction(ec, &t) : 0;
}
