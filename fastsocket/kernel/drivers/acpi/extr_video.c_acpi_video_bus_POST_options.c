
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_video_bus {TYPE_1__* device; } ;
struct TYPE_2__ {int handle; } ;


 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int
acpi_video_bus_POST_options(struct acpi_video_bus *video,
       unsigned long long *options)
{
 int status;

 status = acpi_evaluate_integer(video->device->handle, "_VPO", ((void*)0), options);
 *options &= 3;

 return status;
}
