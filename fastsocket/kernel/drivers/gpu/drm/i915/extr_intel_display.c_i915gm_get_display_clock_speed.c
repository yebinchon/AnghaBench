
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drm_device {int pdev; } ;


 int GCFGC ;


 int GC_DISPLAY_CLOCK_MASK ;
 int GC_LOW_FREQUENCY_ENABLE ;
 int pci_read_config_word (int ,int ,int*) ;

__attribute__((used)) static int i915gm_get_display_clock_speed(struct drm_device *dev)
{
 u16 gcfgc = 0;

 pci_read_config_word(dev->pdev, GCFGC, &gcfgc);

 if (gcfgc & GC_LOW_FREQUENCY_ENABLE)
  return 133000;
 else {
  switch (gcfgc & GC_DISPLAY_CLOCK_MASK) {
  case 128:
   return 333000;
  default:
  case 129:
   return 190000;
  }
 }
}
