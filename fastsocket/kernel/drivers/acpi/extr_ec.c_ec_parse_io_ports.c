
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ minimum; } ;
struct TYPE_3__ {TYPE_2__ io; } ;
struct acpi_resource {scalar_t__ type; TYPE_1__ data; } ;
struct acpi_ec {scalar_t__ data_addr; scalar_t__ command_addr; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_RESOURCE_TYPE_IO ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;

__attribute__((used)) static acpi_status
ec_parse_io_ports(struct acpi_resource *resource, void *context)
{
 struct acpi_ec *ec = context;

 if (resource->type != ACPI_RESOURCE_TYPE_IO)
  return AE_OK;






 if (ec->data_addr == 0)
  ec->data_addr = resource->data.io.minimum;
 else if (ec->command_addr == 0)
  ec->command_addr = resource->data.io.minimum;
 else
  return AE_CTRL_TERMINATE;

 return AE_OK;
}
