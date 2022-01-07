
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_video_device {TYPE_1__* dev; } ;
struct TYPE_2__ {int handle; } ;


 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int
acpi_video_device_query(struct acpi_video_device *device, unsigned long long *state)
{
 int status;

 status = acpi_evaluate_integer(device->dev->handle, "_DGS", ((void*)0), state);

 return status;
}
