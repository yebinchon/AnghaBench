
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct fujitsu_t {int * acpi_handle; struct input_dev* input; } ;
struct acpi_device {int dummy; } ;


 struct fujitsu_t* acpi_driver_data (struct acpi_device*) ;
 int input_free_device (struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;

__attribute__((used)) static int acpi_fujitsu_remove(struct acpi_device *device, int type)
{
 struct fujitsu_t *fujitsu = acpi_driver_data(device);
 struct input_dev *input = fujitsu->input;

 input_unregister_device(input);

 input_free_device(input);

 fujitsu->acpi_handle = ((void*)0);

 return 0;
}
