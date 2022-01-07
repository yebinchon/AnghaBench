
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_device {int dummy; } ;
struct enclosure_component {int dummy; } ;
typedef enum enclosure_component_setting { ____Placeholder_enclosure_component_setting } enclosure_component_setting ;


 int EINVAL ;


 int ses_set_page2_descriptor (struct enclosure_device*,struct enclosure_component*,unsigned char*) ;

__attribute__((used)) static int ses_set_locate(struct enclosure_device *edev,
     struct enclosure_component *ecomp,
     enum enclosure_component_setting val)
{
 unsigned char desc[4] = {0 };

 switch (val) {
 case 129:

  break;
 case 128:
  desc[2] = 0x02;
  break;
 default:

  return -EINVAL;
 }
 return ses_set_page2_descriptor(edev, ecomp, desc);
}
