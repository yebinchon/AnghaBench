
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_video_bus {TYPE_1__* device; } ;
struct TYPE_2__ {int handle; } ;


 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int
acpi_video_bus_get_POST(struct acpi_video_bus *video, unsigned long long *id)
{
 int status;

 status = acpi_evaluate_integer(video->device->handle, "_GPD", ((void*)0), id);

 return status;
}
