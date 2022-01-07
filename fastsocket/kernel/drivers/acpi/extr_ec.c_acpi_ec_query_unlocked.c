
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct transaction {int rlen; int wlen; scalar_t__* rdata; int * wdata; int command; } ;
struct acpi_ec {int dummy; } ;


 int ACPI_EC_COMMAND_QUERY ;
 int EINVAL ;
 int ENODATA ;
 int acpi_ec_transaction_unlocked (struct acpi_ec*,struct transaction*) ;

__attribute__((used)) static int acpi_ec_query_unlocked(struct acpi_ec *ec, u8 * data)
{
 int result;
 u8 d;
 struct transaction t = {.command = ACPI_EC_COMMAND_QUERY,
    .wdata = ((void*)0), .rdata = &d,
    .wlen = 0, .rlen = 1};
 if (!ec || !data)
  return -EINVAL;





 result = acpi_ec_transaction_unlocked(ec, &t);
 if (result)
  return result;
 if (!d)
  return -ENODATA;
 *data = d;
 return 0;
}
