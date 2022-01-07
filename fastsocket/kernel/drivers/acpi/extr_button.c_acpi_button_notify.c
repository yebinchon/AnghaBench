
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct input_dev {int keybit; } ;
struct acpi_device {int dummy; } ;
struct acpi_button {int pushed; int type; struct input_dev* input; } ;



 int ACPI_BUTTON_TYPE_LID ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;

 int KEY_POWER ;
 int KEY_SLEEP ;
 int acpi_bus_generate_proc_event (struct acpi_device*,int,int ) ;
 struct acpi_button* acpi_driver_data (struct acpi_device*) ;
 int acpi_lid_send_state (struct acpi_device*) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void acpi_button_notify(struct acpi_device *device, u32 event)
{
 struct acpi_button *button = acpi_driver_data(device);
 struct input_dev *input;

 switch (event) {
 case 128:
  event = 129;

 case 129:
  input = button->input;
  if (button->type == ACPI_BUTTON_TYPE_LID) {
   acpi_lid_send_state(device);
  } else {
   int keycode = test_bit(KEY_SLEEP, input->keybit) ?
      KEY_SLEEP : KEY_POWER;

   input_report_key(input, keycode, 1);
   input_sync(input);
   input_report_key(input, keycode, 0);
   input_sync(input);
  }

  acpi_bus_generate_proc_event(device, event, ++button->pushed);
  break;
 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Unsupported event [0x%x]\n", event));
  break;
 }
}
