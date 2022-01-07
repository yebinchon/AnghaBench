
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acer_quirks ;
 int dmi_check_system (int ) ;
 int force_series ;
 int quirk_acer_travelmate_2490 ;
 int quirk_unknown ;
 int * quirks ;
 int set_quirks () ;

__attribute__((used)) static void find_quirks(void)
{
 if (!force_series) {
  dmi_check_system(acer_quirks);
 } else if (force_series == 2490) {
  quirks = &quirk_acer_travelmate_2490;
 }

 if (quirks == ((void*)0))
  quirks = &quirk_unknown;

 set_quirks();
}
