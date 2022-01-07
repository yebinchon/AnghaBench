
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct intel_dvo_device {int dummy; } ;


 int VR01 ;
 int VR01_DVO_ENABLE ;
 int VR01_LCD_ENABLE ;
 int VR30 ;
 int VR30_PANEL_ON ;
 int VR80 ;
 int ivch_read (struct intel_dvo_device*,int ,int*) ;
 int ivch_write (struct intel_dvo_device*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void ivch_dpms(struct intel_dvo_device *dvo, bool enable)
{
 int i;
 uint16_t vr01, vr30, backlight;


 if (!ivch_read(dvo, VR01, &vr01))
  return;

 if (enable)
  backlight = 1;
 else
  backlight = 0;
 ivch_write(dvo, VR80, backlight);

 if (enable)
  vr01 |= VR01_LCD_ENABLE | VR01_DVO_ENABLE;
 else
  vr01 &= ~(VR01_LCD_ENABLE | VR01_DVO_ENABLE);

 ivch_write(dvo, VR01, vr01);


 for (i = 0; i < 100; i++) {
  if (!ivch_read(dvo, VR30, &vr30))
   break;

  if (((vr30 & VR30_PANEL_ON) != 0) == enable)
   break;
  udelay(1000);
 }

 udelay(16 * 1000);
}
