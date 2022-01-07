
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sony_nc_rfkill { ____Placeholder_sony_nc_rfkill } sony_nc_rfkill ;


 int N_SONY_RFKILL ;
 scalar_t__ rfkill_set_hw_state (int ,int) ;
 int rfkill_set_states (int ,int,int) ;
 int sony_call_snc_handle (int,int,int*) ;
 int* sony_rfkill_address ;
 int * sony_rfkill_devices ;

__attribute__((used)) static void sony_nc_rfkill_update()
{
 enum sony_nc_rfkill i;
 int result;
 bool hwblock;

 sony_call_snc_handle(0x124, 0x200, &result);
 hwblock = !(result & 0x1);

 for (i = 0; i < N_SONY_RFKILL; i++) {
  int argument = sony_rfkill_address[i];

  if (!sony_rfkill_devices[i])
   continue;

  if (hwblock) {
   if (rfkill_set_hw_state(sony_rfkill_devices[i], 1)) {

   }
   continue;
  }

  sony_call_snc_handle(0x124, argument, &result);
  rfkill_set_states(sony_rfkill_devices[i],
      !(result & 0xf), 0);
 }
}
