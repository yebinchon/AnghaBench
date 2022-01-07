
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct fujitsu_hotkey_t {int * acpi_handle; int fifo; scalar_t__ kblamps_registered; scalar_t__ logolamp_registered; struct input_dev* input; } ;
struct acpi_device {int dummy; } ;


 struct fujitsu_hotkey_t* acpi_driver_data (struct acpi_device*) ;
 int input_free_device (struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 int kblamps_led ;
 int kfifo_free (int ) ;
 int led_classdev_unregister (int *) ;
 int logolamp_led ;

__attribute__((used)) static int acpi_fujitsu_hotkey_remove(struct acpi_device *device, int type)
{
 struct fujitsu_hotkey_t *fujitsu_hotkey = acpi_driver_data(device);
 struct input_dev *input = fujitsu_hotkey->input;
 input_unregister_device(input);

 input_free_device(input);

 kfifo_free(fujitsu_hotkey->fifo);

 fujitsu_hotkey->acpi_handle = ((void*)0);

 return 0;
}
