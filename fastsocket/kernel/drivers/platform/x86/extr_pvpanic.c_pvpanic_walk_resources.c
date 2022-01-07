
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minimum; } ;
struct TYPE_4__ {TYPE_1__ io; } ;
struct acpi_resource {int type; TYPE_2__ data; } ;
typedef int acpi_status ;




 int AE_ERROR ;
 int AE_OK ;
 int port ;

__attribute__((used)) static acpi_status
pvpanic_walk_resources(struct acpi_resource *res, void *context)
{
 switch (res->type) {
 case 129:
  return AE_OK;

 case 128:
  port = res->data.io.minimum;
  return AE_OK;

 default:
  return AE_ERROR;
 }
}
