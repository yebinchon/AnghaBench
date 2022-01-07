
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* pointer; } ;
struct TYPE_4__ {char* pointer; } ;
union acpi_object {int type; TYPE_2__ buffer; TYPE_1__ string; } ;
typedef char* uint ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
struct TYPE_6__ {int handle; int name; } ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_DSDT ;


 int AE_OK ;
 int ASUS_HANDLE_INIT (int ) ;
 unsigned long long BT_HWRS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long long WL_HWRS ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_get_table (int ,int,int *) ;
 int asus_info ;
 int brightness_get ;
 int brightness_set ;
 int bt_switch ;
 int display_get ;
 int display_set ;
 int gled_set ;
 int gps_off ;
 int gps_on ;
 int gps_status ;
 TYPE_3__* hotk ;
 int kfree (union acpi_object*) ;
 int kled_get ;
 int kled_set ;
 int kstrdup (char*,int ) ;
 int lcd_switch ;
 int ledd_set ;
 int ls_level ;
 int ls_switch ;
 int mled_set ;
 int pled_set ;
 int pr_err (char*) ;
 int pr_notice (char*,char*) ;
 int pr_warning (char*) ;
 int rled_set ;
 int tled_set ;
 int wapf ;
 int wireless_status ;
 int wl_switch ;
 scalar_t__ write_acpi_int (int ,char*,int ,struct acpi_buffer*) ;

__attribute__((used)) static int asus_hotk_get_info(void)
{
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *model = ((void*)0);
 unsigned long long bsts_result, hwrs_result;
 char *string = ((void*)0);
 acpi_status status;
 status = acpi_get_table(ACPI_SIG_DSDT, 1, &asus_info);
 if (ACPI_FAILURE(status))
  pr_warning("Couldn't get the DSDT table header\n");


 if (write_acpi_int(hotk->handle, "INIT", 0, &buffer)) {
  pr_err("Hotkey initialization failed\n");
  return -ENODEV;
 }


 status =
     acpi_evaluate_integer(hotk->handle, "BSTS", ((void*)0), &bsts_result);
 if (ACPI_FAILURE(status))
  pr_warning("Error calling BSTS\n");
 else if (bsts_result)
  pr_notice("BSTS called, 0x%02x returned\n",
         (uint) bsts_result);


 write_acpi_int(hotk->handle, "CWAP", wapf, ((void*)0));







 if (buffer.pointer) {
  model = buffer.pointer;
  switch (model->type) {
  case 128:
   string = model->string.pointer;
   break;
  case 129:
   string = model->buffer.pointer;
   break;
  default:
   string = "";
   break;
  }
 }
 hotk->name = kstrdup(string, GFP_KERNEL);
 if (!hotk->name)
  return -ENOMEM;

 if (*string)
  pr_notice("  %s model detected\n", string);

 ASUS_HANDLE_INIT(mled_set);
 ASUS_HANDLE_INIT(tled_set);
 ASUS_HANDLE_INIT(rled_set);
 ASUS_HANDLE_INIT(pled_set);
 ASUS_HANDLE_INIT(gled_set);

 ASUS_HANDLE_INIT(ledd_set);

 ASUS_HANDLE_INIT(kled_set);
 ASUS_HANDLE_INIT(kled_get);







 status =
     acpi_evaluate_integer(hotk->handle, "HRWS", ((void*)0), &hwrs_result);
 if (ACPI_FAILURE(status))
  hwrs_result = WL_HWRS | BT_HWRS;

 if (hwrs_result & WL_HWRS)
  ASUS_HANDLE_INIT(wl_switch);
 if (hwrs_result & BT_HWRS)
  ASUS_HANDLE_INIT(bt_switch);

 ASUS_HANDLE_INIT(wireless_status);

 ASUS_HANDLE_INIT(brightness_set);
 ASUS_HANDLE_INIT(brightness_get);

 ASUS_HANDLE_INIT(lcd_switch);

 ASUS_HANDLE_INIT(display_set);
 ASUS_HANDLE_INIT(display_get);





 if (!ASUS_HANDLE_INIT(ls_switch))
  ASUS_HANDLE_INIT(ls_level);

 ASUS_HANDLE_INIT(gps_on);
 ASUS_HANDLE_INIT(gps_off);
 ASUS_HANDLE_INIT(gps_status);

 kfree(model);

 return AE_OK;
}
