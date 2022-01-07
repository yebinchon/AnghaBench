
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wmi_interface {int dummy; } ;
typedef int acpi_status ;
struct TYPE_2__ {int mailled; } ;







 int ACER_WMID_SET_BLUETOOTH_METHODID ;
 int ACER_WMID_SET_BRIGHTNESS_METHODID ;
 int ACER_WMID_SET_THREEG_METHODID ;
 int ACER_WMID_SET_WIRELESS_METHODID ;
 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int WMI_execute_u32 (int,int,int *) ;
 int i8042_command (char*,int) ;
 int i8042_lock_chip () ;
 int i8042_unlock_chip () ;
 int max_brightness ;
 TYPE_1__* quirks ;

__attribute__((used)) static acpi_status WMID_set_u32(u32 value, u32 cap, struct wmi_interface *iface)
{
 u32 method_id = 0;
 char param;

 switch (cap) {
 case 131:
  if (value > max_brightness)
   return AE_BAD_PARAMETER;
  method_id = ACER_WMID_SET_BRIGHTNESS_METHODID;
  break;
 case 128:
  if (value > 1)
   return AE_BAD_PARAMETER;
  method_id = ACER_WMID_SET_WIRELESS_METHODID;
  break;
 case 132:
  if (value > 1)
   return AE_BAD_PARAMETER;
  method_id = ACER_WMID_SET_BLUETOOTH_METHODID;
  break;
 case 129:
  if (value > 1)
   return AE_BAD_PARAMETER;
  method_id = ACER_WMID_SET_THREEG_METHODID;
  break;
 case 130:
  if (value > 1)
   return AE_BAD_PARAMETER;
  if (quirks->mailled == 1) {
   param = value ? 0x92 : 0x93;
   i8042_lock_chip();
   i8042_command(&param, 0x1059);
   i8042_unlock_chip();
   return 0;
  }
  break;
 default:
  return AE_ERROR;
 }
 return WMI_execute_u32(method_id, (u32)value, ((void*)0));
}
