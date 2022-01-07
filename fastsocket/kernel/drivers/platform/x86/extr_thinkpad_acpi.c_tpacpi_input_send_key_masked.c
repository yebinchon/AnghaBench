
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hotkey_driver_event (unsigned int const) ;
 int hotkey_user_mask ;
 int tpacpi_input_send_key (unsigned int const) ;

__attribute__((used)) static void tpacpi_input_send_key_masked(const unsigned int scancode)
{
 hotkey_driver_event(scancode);
 if (hotkey_user_mask & (1 << scancode))
  tpacpi_input_send_key(scancode);
}
