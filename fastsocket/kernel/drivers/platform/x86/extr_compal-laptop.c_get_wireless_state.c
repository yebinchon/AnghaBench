
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BT_MASK ;
 int COMPAL_EC_COMMAND_WIRELESS ;
 int KILLSWITCH_MASK ;
 int WLAN_MASK ;
 int ec_read (int ,int*) ;

__attribute__((used)) static int get_wireless_state(int *wlan, int *bluetooth)
{
 u8 result;

 ec_read(COMPAL_EC_COMMAND_WIRELESS, &result);

 if (wlan) {
  if ((result & KILLSWITCH_MASK) == 0)
   *wlan = 0;
  else
   *wlan = result & WLAN_MASK;
 }

 if (bluetooth) {
  if ((result & KILLSWITCH_MASK) == 0)
   *bluetooth = 0;
  else
   *bluetooth = (result & BT_MASK) >> 1;
 }

 return 0;
}
