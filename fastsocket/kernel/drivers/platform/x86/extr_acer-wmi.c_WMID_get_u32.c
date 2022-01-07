
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wmi_interface {int dummy; } ;
typedef int acpi_status ;
struct TYPE_2__ {int mailled; } ;







 int ACER_WMID_GET_BLUETOOTH_METHODID ;
 int ACER_WMID_GET_BRIGHTNESS_METHODID ;
 int ACER_WMID_GET_THREEG_METHODID ;
 int ACER_WMID_GET_WIRELESS_METHODID ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_ERROR ;
 int WMI_execute_u32 (int,int ,int*) ;
 int ec_read (int,int*) ;
 TYPE_1__* quirks ;

__attribute__((used)) static acpi_status WMID_get_u32(u32 *value, u32 cap,
struct wmi_interface *iface)
{
 acpi_status status;
 u8 tmp;
 u32 result, method_id = 0;

 switch (cap) {
 case 128:
  method_id = ACER_WMID_GET_WIRELESS_METHODID;
  break;
 case 132:
  method_id = ACER_WMID_GET_BLUETOOTH_METHODID;
  break;
 case 131:
  method_id = ACER_WMID_GET_BRIGHTNESS_METHODID;
  break;
 case 129:
  method_id = ACER_WMID_GET_THREEG_METHODID;
  break;
 case 130:
  if (quirks->mailled == 1) {
   ec_read(0x9f, &tmp);
   *value = tmp & 0x1;
   return 0;
  }
 default:
  return AE_ERROR;
 }
 status = WMI_execute_u32(method_id, 0, &result);

 if (ACPI_SUCCESS(status))
  *value = (u8)result;

 return status;
}
