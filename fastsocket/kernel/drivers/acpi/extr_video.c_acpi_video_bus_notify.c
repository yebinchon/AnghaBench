
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct input_dev {int dummy; } ;
struct acpi_video_bus {struct input_dev* input; } ;
struct acpi_device {int dummy; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;





 int KEY_SWITCHVIDEOMODE ;
 int KEY_VIDEO_NEXT ;
 int KEY_VIDEO_PREV ;
 int acpi_bus_generate_proc_event (struct acpi_device*,int,int ) ;
 struct acpi_video_bus* acpi_driver_data (struct acpi_device*) ;
 int acpi_notifier_call_chain (struct acpi_device*,int,int ) ;
 int acpi_video_device_enumerate (struct acpi_video_bus*) ;
 int acpi_video_device_rebind (struct acpi_video_bus*) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void acpi_video_bus_notify(struct acpi_device *device, u32 event)
{
 struct acpi_video_bus *video = acpi_driver_data(device);
 struct input_dev *input;
 int keycode = 0;

 if (!video)
  return;

 input = video->input;

 switch (event) {
 case 128:

  acpi_bus_generate_proc_event(device, event, 0);
  if (!acpi_notifier_call_chain(device, event, 0))
   keycode = KEY_SWITCHVIDEOMODE;
  break;

 case 129:

  acpi_video_device_enumerate(video);
  acpi_video_device_rebind(video);
  acpi_bus_generate_proc_event(device, event, 0);
  keycode = KEY_SWITCHVIDEOMODE;
  break;

 case 132:
  acpi_bus_generate_proc_event(device, event, 0);
  keycode = KEY_SWITCHVIDEOMODE;
  break;
 case 131:
  acpi_bus_generate_proc_event(device, event, 0);
  keycode = KEY_VIDEO_NEXT;
  break;
 case 130:
  acpi_bus_generate_proc_event(device, event, 0);
  keycode = KEY_VIDEO_PREV;
  break;

 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Unsupported event [0x%x]\n", event));
  break;
 }

 if (event != 128)
  acpi_notifier_call_chain(device, event, 0);

 if (keycode) {
  input_report_key(input, keycode, 1);
  input_sync(input);
  input_report_key(input, keycode, 0);
  input_sync(input);
 }

 return;
}
