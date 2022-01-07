
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bios_hardcoded_edid_size; scalar_t__ bios_hardcoded_edid; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct edid {int dummy; } ;


 int GFP_KERNEL ;
 struct edid* kmalloc (int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;

struct edid *
radeon_bios_get_hardcoded_edid(struct radeon_device *rdev)
{
 struct edid *edid;

 if (rdev->mode_info.bios_hardcoded_edid) {
  edid = kmalloc(rdev->mode_info.bios_hardcoded_edid_size, GFP_KERNEL);
  if (edid) {
   memcpy((unsigned char *)edid,
          (unsigned char *)rdev->mode_info.bios_hardcoded_edid,
          rdev->mode_info.bios_hardcoded_edid_size);
   return edid;
  }
 }
 return ((void*)0);
}
