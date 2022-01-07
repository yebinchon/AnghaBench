
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_device {unsigned long request_state; int dev; } ;
struct acpi_video_device {int dummy; } ;


 int acpi_video_device_set_state (struct acpi_video_device*,unsigned long) ;
 scalar_t__ dev_get_drvdata (int *) ;

__attribute__((used)) static int acpi_video_output_set(struct output_device *od)
{
 unsigned long state = od->request_state;
 struct acpi_video_device *vd=
  (struct acpi_video_device *)dev_get_drvdata(&od->dev);
 return acpi_video_device_set_state(vd, state);
}
