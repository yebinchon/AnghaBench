
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bios_hardcoded_edid_size; struct edid* bios_hardcoded_edid; } ;
struct radeon_device {unsigned char* bios; TYPE_1__ mode_info; int ddev; } ;
struct edid {int dummy; } ;


 int COMBIOS_HARDCODED_EDID_TABLE ;
 unsigned char EDID_LENGTH ;
 int GFP_KERNEL ;
 int combios_get_table_offset (int ,int ) ;
 int drm_edid_is_valid (struct edid*) ;
 int kfree (struct edid*) ;
 struct edid* kmalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

bool radeon_combios_check_hardcoded_edid(struct radeon_device *rdev)
{
 int edid_info, size;
 struct edid *edid;
 unsigned char *raw;
 edid_info = combios_get_table_offset(rdev->ddev, COMBIOS_HARDCODED_EDID_TABLE);
 if (!edid_info)
  return 0;

 raw = rdev->bios + edid_info;
 size = EDID_LENGTH * (raw[0x7e] + 1);
 edid = kmalloc(size, GFP_KERNEL);
 if (edid == ((void*)0))
  return 0;

 memcpy((unsigned char *)edid, raw, size);

 if (!drm_edid_is_valid(edid)) {
  kfree(edid);
  return 0;
 }

 rdev->mode_info.bios_hardcoded_edid = edid;
 rdev->mode_info.bios_hardcoded_edid_size = size;
 return 1;
}
