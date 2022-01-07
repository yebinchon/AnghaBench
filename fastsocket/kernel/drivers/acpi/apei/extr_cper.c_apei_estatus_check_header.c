
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hest_generic_status {int data_length; int raw_data_offset; scalar_t__ raw_data_length; } ;
struct acpi_hest_generic_data {int dummy; } ;


 int EINVAL ;

int apei_estatus_check_header(const struct acpi_hest_generic_status *estatus)
{
 if (estatus->data_length &&
     estatus->data_length < sizeof(struct acpi_hest_generic_data))
  return -EINVAL;
 if (estatus->raw_data_length &&
     estatus->raw_data_offset < sizeof(*estatus) + estatus->data_length)
  return -EINVAL;

 return 0;
}
