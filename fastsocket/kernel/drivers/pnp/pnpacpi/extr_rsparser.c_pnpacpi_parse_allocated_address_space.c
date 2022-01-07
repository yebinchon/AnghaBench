
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnp_dev {int dev; } ;
struct TYPE_3__ {int write_protect; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;
struct acpi_resource_address64 {scalar_t__ producer_consumer; scalar_t__ resource_type; int granularity; int address_length; int minimum; TYPE_2__ info; } ;
struct acpi_resource {int type; } ;
typedef int acpi_status ;


 int ACPI_DECODE_10 ;
 int ACPI_DECODE_16 ;
 scalar_t__ ACPI_IO_RANGE ;
 scalar_t__ ACPI_MEMORY_RANGE ;
 scalar_t__ ACPI_PRODUCER ;
 int ACPI_SUCCESS (int ) ;
 int acpi_resource_to_address64 (struct acpi_resource*,struct acpi_resource_address64*) ;
 int dev_warn (int *,char*,int ) ;
 int pnpacpi_parse_allocated_ioresource (struct pnp_dev*,int ,int ,int ) ;
 int pnpacpi_parse_allocated_memresource (struct pnp_dev*,int ,int ,int ) ;

__attribute__((used)) static void pnpacpi_parse_allocated_address_space(struct pnp_dev *dev,
        struct acpi_resource *res)
{
 struct acpi_resource_address64 addr, *p = &addr;
 acpi_status status;

 status = acpi_resource_to_address64(res, p);
 if (!ACPI_SUCCESS(status)) {
  dev_warn(&dev->dev, "failed to convert resource type %d\n",
    res->type);
  return;
 }

 if (p->producer_consumer == ACPI_PRODUCER)
  return;

 if (p->resource_type == ACPI_MEMORY_RANGE)
  pnpacpi_parse_allocated_memresource(dev,
   p->minimum, p->address_length,
   p->info.mem.write_protect);
 else if (p->resource_type == ACPI_IO_RANGE)
  pnpacpi_parse_allocated_ioresource(dev,
   p->minimum, p->address_length,
   p->granularity == 0xfff ? ACPI_DECODE_10 :
    ACPI_DECODE_16);
}
