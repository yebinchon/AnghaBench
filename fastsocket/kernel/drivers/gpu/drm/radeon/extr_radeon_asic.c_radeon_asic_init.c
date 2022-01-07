
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct radeon_device {int flags; int num_crtc; int family; TYPE_3__* asic; int * bios; } ;
struct TYPE_23__ {int * set_memory_clock; int * get_memory_clock; int * set_engine_clock; int * get_engine_clock; } ;
struct TYPE_22__ {int * set_backlight_level; } ;
struct TYPE_24__ {TYPE_2__ pm; TYPE_1__ display; } ;
 int EINVAL ;
 int RADEON_IS_IGP ;
 int RADEON_IS_PCIE ;
 int RADEON_SINGLE_CRTC ;
 TYPE_3__ btc_asic ;
 TYPE_3__ cayman_asic ;
 TYPE_3__ evergreen_asic ;
 TYPE_3__ r100_asic ;
 TYPE_3__ r200_asic ;
 TYPE_3__ r300_asic ;
 TYPE_3__ r300_asic_pcie ;
 TYPE_3__ r420_asic ;
 TYPE_3__ r520_asic ;
 TYPE_3__ r600_asic ;
 int radeon_legacy_get_engine_clock ;
 int radeon_legacy_get_memory_clock ;
 int radeon_legacy_set_backlight_level ;
 int radeon_legacy_set_engine_clock ;
 int radeon_register_accessor_init (struct radeon_device*) ;
 TYPE_3__ rs400_asic ;
 TYPE_3__ rs600_asic ;
 TYPE_3__ rs690_asic ;
 TYPE_3__ rs780_asic ;
 TYPE_3__ rv515_asic ;
 TYPE_3__ rv770_asic ;
 TYPE_3__ si_asic ;
 TYPE_3__ sumo_asic ;
 TYPE_3__ trinity_asic ;

int radeon_asic_init(struct radeon_device *rdev)
{
 radeon_register_accessor_init(rdev);


 if (rdev->flags & RADEON_SINGLE_CRTC)
  rdev->num_crtc = 1;
 else
  rdev->num_crtc = 2;

 switch (rdev->family) {
 case 172:
 case 152:
 case 162:
 case 151:
 case 161:
  rdev->asic = &r100_asic;
  break;
 case 171:
 case 150:
 case 160:
 case 149:
  rdev->asic = &r200_asic;
  break;
 case 170:
 case 169:
 case 148:
 case 147:
  if (rdev->flags & RADEON_IS_PCIE)
   rdev->asic = &r300_asic_pcie;
  else
   rdev->asic = &r300_asic;
  break;
 case 168:
 case 167:
 case 146:
  rdev->asic = &r420_asic;

  if (rdev->bios == ((void*)0)) {
   rdev->asic->pm.get_engine_clock = &radeon_legacy_get_engine_clock;
   rdev->asic->pm.set_engine_clock = &radeon_legacy_set_engine_clock;
   rdev->asic->pm.get_memory_clock = &radeon_legacy_get_memory_clock;
   rdev->asic->pm.set_memory_clock = ((void*)0);
   rdev->asic->display.set_backlight_level = &radeon_legacy_set_backlight_level;
  }
  break;
 case 159:
 case 158:
  rdev->asic = &rs400_asic;
  break;
 case 157:
  rdev->asic = &rs600_asic;
  break;
 case 156:
 case 155:
  rdev->asic = &rs690_asic;
  break;
 case 145:
  rdev->asic = &rv515_asic;
  break;
 case 166:
 case 144:
 case 143:
 case 142:
 case 165:
  rdev->asic = &r520_asic;
  break;
 case 164:
 case 141:
 case 139:
 case 140:
 case 138:
 case 137:
  rdev->asic = &r600_asic;
  break;
 case 154:
 case 153:
  rdev->asic = &rs780_asic;
  break;
 case 133:
 case 135:
 case 136:
 case 134:
  rdev->asic = &rv770_asic;
  break;
 case 179:
 case 163:
 case 176:
 case 178:
 case 177:

  if (rdev->family == 179)
   rdev->num_crtc = 4;
  else
   rdev->num_crtc = 6;
  rdev->asic = &evergreen_asic;
  break;
 case 174:
 case 132:
 case 131:
  rdev->asic = &sumo_asic;
  break;
 case 182:
 case 129:
 case 181:

  if (rdev->family == 181)
   rdev->num_crtc = 4;
  else
   rdev->num_crtc = 6;
  rdev->asic = &btc_asic;
  break;
 case 180:
  rdev->asic = &cayman_asic;

  rdev->num_crtc = 6;
  break;
 case 183:
  rdev->asic = &trinity_asic;

  rdev->num_crtc = 4;
  break;
 case 130:
 case 173:
 case 128:
 case 175:
  rdev->asic = &si_asic;

  if (rdev->family == 175)
   rdev->num_crtc = 2;
  else
   rdev->num_crtc = 6;
  break;
 default:

  return -EINVAL;
 }

 if (rdev->flags & RADEON_IS_IGP) {
  rdev->asic->pm.get_memory_clock = ((void*)0);
  rdev->asic->pm.set_memory_clock = ((void*)0);
 }

 return 0;
}
