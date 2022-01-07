
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct asus_hotk {int dummy; } ;
struct acpi_device {TYPE_1__* driver_data; int handle; } ;
struct TYPE_4__ {int ledd_status; int light_level; struct TYPE_4__* name; scalar_t__ light_switch; struct acpi_device* device; int handle; } ;


 int ASUS_HOTK_CLASS ;
 int ASUS_HOTK_DEVICE_NAME ;
 int ASUS_LAPTOP_VERSION ;
 int BT_ON ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPS_ON ;
 int LCD_ON ;
 int WL_ON ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int asus_hotk_add_fs () ;
 int asus_hotk_check () ;
 int asus_hotk_found ;
 int * bt_switch_handle ;
 TYPE_1__* hotk ;
 int kfree (TYPE_1__*) ;
 scalar_t__ kled_set_handle ;
 TYPE_1__* kzalloc (int,int ) ;
 scalar_t__ ls_level_handle ;
 scalar_t__ ls_switch_handle ;
 int pr_notice (char*,int ) ;
 int read_status (int ) ;
 int set_kled_lvl (int) ;
 int set_light_sens_level (int) ;
 int set_light_sens_switch (scalar_t__) ;
 int strcpy (int ,int ) ;
 int * wl_switch_handle ;
 int write_status (int *,int,int ) ;

__attribute__((used)) static int asus_hotk_add(struct acpi_device *device)
{
 int result;

 if (!device)
  return -EINVAL;

 pr_notice("Asus Laptop Support version %s\n",
        ASUS_LAPTOP_VERSION);

 hotk = kzalloc(sizeof(struct asus_hotk), GFP_KERNEL);
 if (!hotk)
  return -ENOMEM;

 hotk->handle = device->handle;
 strcpy(acpi_device_name(device), ASUS_HOTK_DEVICE_NAME);
 strcpy(acpi_device_class(device), ASUS_HOTK_CLASS);
 device->driver_data = hotk;
 hotk->device = device;

 result = asus_hotk_check();
 if (result)
  goto end;

 asus_hotk_add_fs();

 asus_hotk_found = 1;


 write_status(bt_switch_handle, 1, BT_ON);
 write_status(wl_switch_handle, 1, WL_ON);


 write_status(((void*)0), read_status(BT_ON), BT_ON);
 write_status(((void*)0), read_status(WL_ON), WL_ON);


 write_status(((void*)0), 1, LCD_ON);


 if (kled_set_handle)
  set_kled_lvl(1);


 hotk->ledd_status = 0xFFF;


 hotk->light_switch = 0;
 hotk->light_level = 5;

 if (ls_switch_handle)
  set_light_sens_switch(hotk->light_switch);

 if (ls_level_handle)
  set_light_sens_level(hotk->light_level);


 write_status(((void*)0), 1, GPS_ON);

end:
 if (result) {
  kfree(hotk->name);
  kfree(hotk);
 }

 return result;
}
