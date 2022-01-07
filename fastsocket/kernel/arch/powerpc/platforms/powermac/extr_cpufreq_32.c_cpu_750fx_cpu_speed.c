
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMAC_FTR_WRITE_GPIO ;
 int SPRN_HID2 ;
 scalar_t__ has_cpu_l2lve ;
 int local_delay (int) ;
 int low_choose_750fx_pll (int) ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int pmac_call_feature (int ,int *,int ,int) ;
 int voltage_gpio ;

__attribute__((used)) static int cpu_750fx_cpu_speed(int low_speed)
{
 u32 hid2;

 if (low_speed == 0) {

  pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), voltage_gpio, 0x05);

  local_delay(10);


  if (has_cpu_l2lve) {
   hid2 = mfspr(SPRN_HID2);
   hid2 &= ~0x2000;
   mtspr(SPRN_HID2, hid2);
  }
 }



 if (low_speed == 1) {

  if (has_cpu_l2lve) {
   hid2 = mfspr(SPRN_HID2);
   hid2 |= 0x2000;
   mtspr(SPRN_HID2, hid2);
  }


  pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), voltage_gpio, 0x04);
  local_delay(10);
 }

 return 0;
}
