
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_ec {int flags; } ;


 int ACPI_EC_FLAG_SCI ;
 int EC_FLAGS_QUERY_PENDING ;
 int acpi_ec_sync_query (struct acpi_ec*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int ec_check_sci_sync(struct acpi_ec *ec, u8 state)
{
 if (state & ACPI_EC_FLAG_SCI) {
  if (!test_and_set_bit(EC_FLAGS_QUERY_PENDING, &ec->flags))
   return acpi_ec_sync_query(ec);
 }
 return 0;
}
