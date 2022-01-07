
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct key_entry {int type; int keycode; } ;
struct acpi_device {int dummy; } ;
struct TYPE_4__ {int device_class; } ;
struct TYPE_6__ {int dev; TYPE_1__ pnp; } ;
struct TYPE_5__ {scalar_t__ inputdev; TYPE_3__* device; int * event_count; } ;


 int ATKD_LCD_OFF ;
 int ATKD_LCD_ON ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;

 int LCD_ON ;
 int acpi_bus_generate_netlink_event (int ,int ,int,scalar_t__) ;
 int acpi_bus_generate_proc_event (TYPE_3__*,int,scalar_t__) ;
 struct key_entry* asus_get_entry_by_scancode (int) ;
 int dev_name (int *) ;
 TYPE_2__* hotk ;
 int input_report_key (scalar_t__,int ,int) ;
 int input_sync (scalar_t__) ;
 int lcd_blank (int ) ;
 int write_status (int *,int,int ) ;

__attribute__((used)) static void asus_hotk_notify(struct acpi_device *device, u32 event)
{
 static struct key_entry *key;
 u16 count;


 if (!hotk)
  return;





 if (event == ATKD_LCD_ON) {
  write_status(((void*)0), 1, LCD_ON);
  lcd_blank(FB_BLANK_UNBLANK);
 } else if (event == ATKD_LCD_OFF) {
  write_status(((void*)0), 0, LCD_ON);
  lcd_blank(FB_BLANK_POWERDOWN);
 }

 count = hotk->event_count[event % 128]++;
 acpi_bus_generate_proc_event(hotk->device, event, count);
 acpi_bus_generate_netlink_event(hotk->device->pnp.device_class,
     dev_name(&hotk->device->dev), event,
     count);

 if (hotk->inputdev) {
  key = asus_get_entry_by_scancode(event);
  if (!key)
   return ;

  switch (key->type) {
  case 128:
   input_report_key(hotk->inputdev, key->keycode, 1);
   input_sync(hotk->inputdev);
   input_report_key(hotk->inputdev, key->keycode, 0);
   input_sync(hotk->inputdev);
   break;
  }
 }
}
