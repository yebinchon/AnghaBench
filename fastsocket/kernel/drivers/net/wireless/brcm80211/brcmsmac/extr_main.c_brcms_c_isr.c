
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_hardware {int d11core; int up; } ;
struct brcms_c_info {int macintstatus; int macintmask; struct brcms_hardware* hw; } ;


 int brcms_err (int ,char*) ;
 int wlc_intstatus (struct brcms_c_info*,int) ;

bool brcms_c_isr(struct brcms_c_info *wlc)
{
 struct brcms_hardware *wlc_hw = wlc->hw;
 u32 macintstatus;

 if (!wlc_hw->up || !wlc->macintmask)
  return 0;


 macintstatus = wlc_intstatus(wlc, 1);

 if (macintstatus == 0xffffffff) {
  brcms_err(wlc_hw->d11core,
     "DEVICEREMOVED detected in the ISR code path\n");
  return 0;
 }


 if (macintstatus == 0)
  return 0;


 wlc->macintstatus = macintstatus;

 return 1;

}
