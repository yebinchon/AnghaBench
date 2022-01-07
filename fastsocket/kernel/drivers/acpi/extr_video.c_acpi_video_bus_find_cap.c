
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int _DOS; int _DOD; int _ROM; int _GPD; int _SPD; int _VPO; } ;
struct acpi_video_bus {TYPE_2__ cap; TYPE_1__* device; } ;
typedef int acpi_handle ;
struct TYPE_3__ {int handle; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_get_handle (int ,char*,int *) ;

__attribute__((used)) static void acpi_video_bus_find_cap(struct acpi_video_bus *video)
{
 acpi_handle h_dummy1;

 if (ACPI_SUCCESS(acpi_get_handle(video->device->handle, "_DOS", &h_dummy1))) {
  video->cap._DOS = 1;
 }
 if (ACPI_SUCCESS(acpi_get_handle(video->device->handle, "_DOD", &h_dummy1))) {
  video->cap._DOD = 1;
 }
 if (ACPI_SUCCESS(acpi_get_handle(video->device->handle, "_ROM", &h_dummy1))) {
  video->cap._ROM = 1;
 }
 if (ACPI_SUCCESS(acpi_get_handle(video->device->handle, "_GPD", &h_dummy1))) {
  video->cap._GPD = 1;
 }
 if (ACPI_SUCCESS(acpi_get_handle(video->device->handle, "_SPD", &h_dummy1))) {
  video->cap._SPD = 1;
 }
 if (ACPI_SUCCESS(acpi_get_handle(video->device->handle, "_VPO", &h_dummy1))) {
  video->cap._VPO = 1;
 }
}
