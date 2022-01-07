
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_device {int dummy; } ;
struct enclosure_component {int active; } ;
typedef enum enclosure_component_setting { ____Placeholder_enclosure_component_setting } enclosure_component_setting ;


 int EINVAL ;


 int ses_set_page2_descriptor (struct enclosure_device*,struct enclosure_component*,unsigned char*) ;

__attribute__((used)) static int ses_set_active(struct enclosure_device *edev,
     struct enclosure_component *ecomp,
     enum enclosure_component_setting val)
{
 unsigned char desc[4] = {0 };

 switch (val) {
 case 129:

  ecomp->active = 0;
  break;
 case 128:
  desc[2] = 0x80;
  ecomp->active = 1;
  break;
 default:

  return -EINVAL;
 }
 return ses_set_page2_descriptor(edev, ecomp, desc);
}
