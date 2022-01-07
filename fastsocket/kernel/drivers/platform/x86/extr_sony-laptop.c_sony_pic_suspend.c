
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int pm_message_t ;


 int ENXIO ;
 scalar_t__ sony_pic_disable (struct acpi_device*) ;

__attribute__((used)) static int sony_pic_suspend(struct acpi_device *device, pm_message_t state)
{
 if (sony_pic_disable(device))
  return -ENXIO;
 return 0;
}
