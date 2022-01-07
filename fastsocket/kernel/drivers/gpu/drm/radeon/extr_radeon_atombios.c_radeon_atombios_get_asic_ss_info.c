
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* asSpreadSpectrum; } ;
struct TYPE_11__ {TYPE_3__* asSpreadSpectrum; } ;
struct TYPE_9__ {TYPE_1__* asSpreadSpectrum; } ;
union asic_ss_info {TYPE_6__ info_3; TYPE_4__ info_2; TYPE_2__ info; } ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int u32 ;
struct radeon_mode_info {TYPE_7__* atom_context; } ;
struct radeon_device {int flags; struct radeon_mode_info mode_info; } ;
struct radeon_atom_ss {void* rate; int type; void* percentage; } ;
struct TYPE_14__ {scalar_t__ bios; } ;
struct TYPE_12__ {int ucClockIndication; int usSpreadRateIn10Hz; int ucSpreadSpectrumMode; int usSpreadSpectrumPercentage; int ulTargetClockRange; } ;
struct TYPE_10__ {int ucClockIndication; int usSpreadRateIn10Hz; int ucSpreadSpectrumMode; int usSpreadSpectrumPercentage; int ulTargetClockRange; } ;
struct TYPE_8__ {int ucClockIndication; int usSpreadRateInKhz; int ucSpreadSpectrumMode; int usSpreadSpectrumPercentage; int ulTargetClockRange; } ;
typedef int ATOM_COMMON_TABLE_HEADER ;
typedef int ATOM_ASIC_SS_ASSIGNMENT_V3 ;
typedef int ATOM_ASIC_SS_ASSIGNMENT_V2 ;
typedef int ATOM_ASIC_SS_ASSIGNMENT ;


 int ASIC_InternalSS_Info ;
 int DATA ;
 int DRM_ERROR (char*,int,int) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int RADEON_IS_IGP ;
 scalar_t__ atom_parse_data_header (TYPE_7__*,int,scalar_t__*,int*,int*,scalar_t__*) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memset (struct radeon_atom_ss*,int ,int) ;
 int radeon_atombios_get_igp_ss_overrides (struct radeon_device*,struct radeon_atom_ss*,int) ;

bool radeon_atombios_get_asic_ss_info(struct radeon_device *rdev,
          struct radeon_atom_ss *ss,
          int id, u32 clock)
{
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, ASIC_InternalSS_Info);
 uint16_t data_offset, size;
 union asic_ss_info *ss_info;
 uint8_t frev, crev;
 int i, num_indices;

 memset(ss, 0, sizeof(struct radeon_atom_ss));
 if (atom_parse_data_header(mode_info->atom_context, index, &size,
       &frev, &crev, &data_offset)) {

  ss_info =
   (union asic_ss_info *)(mode_info->atom_context->bios + data_offset);

  switch (frev) {
  case 1:
   num_indices = (size - sizeof(ATOM_COMMON_TABLE_HEADER)) /
    sizeof(ATOM_ASIC_SS_ASSIGNMENT);

   for (i = 0; i < num_indices; i++) {
    if ((ss_info->info.asSpreadSpectrum[i].ucClockIndication == id) &&
        (clock <= le32_to_cpu(ss_info->info.asSpreadSpectrum[i].ulTargetClockRange))) {
     ss->percentage =
      le16_to_cpu(ss_info->info.asSpreadSpectrum[i].usSpreadSpectrumPercentage);
     ss->type = ss_info->info.asSpreadSpectrum[i].ucSpreadSpectrumMode;
     ss->rate = le16_to_cpu(ss_info->info.asSpreadSpectrum[i].usSpreadRateInKhz);
     return 1;
    }
   }
   break;
  case 2:
   num_indices = (size - sizeof(ATOM_COMMON_TABLE_HEADER)) /
    sizeof(ATOM_ASIC_SS_ASSIGNMENT_V2);
   for (i = 0; i < num_indices; i++) {
    if ((ss_info->info_2.asSpreadSpectrum[i].ucClockIndication == id) &&
        (clock <= le32_to_cpu(ss_info->info_2.asSpreadSpectrum[i].ulTargetClockRange))) {
     ss->percentage =
      le16_to_cpu(ss_info->info_2.asSpreadSpectrum[i].usSpreadSpectrumPercentage);
     ss->type = ss_info->info_2.asSpreadSpectrum[i].ucSpreadSpectrumMode;
     ss->rate = le16_to_cpu(ss_info->info_2.asSpreadSpectrum[i].usSpreadRateIn10Hz);
     return 1;
    }
   }
   break;
  case 3:
   num_indices = (size - sizeof(ATOM_COMMON_TABLE_HEADER)) /
    sizeof(ATOM_ASIC_SS_ASSIGNMENT_V3);
   for (i = 0; i < num_indices; i++) {
    if ((ss_info->info_3.asSpreadSpectrum[i].ucClockIndication == id) &&
        (clock <= le32_to_cpu(ss_info->info_3.asSpreadSpectrum[i].ulTargetClockRange))) {
     ss->percentage =
      le16_to_cpu(ss_info->info_3.asSpreadSpectrum[i].usSpreadSpectrumPercentage);
     ss->type = ss_info->info_3.asSpreadSpectrum[i].ucSpreadSpectrumMode;
     ss->rate = le16_to_cpu(ss_info->info_3.asSpreadSpectrum[i].usSpreadRateIn10Hz);
     if (rdev->flags & RADEON_IS_IGP)
      radeon_atombios_get_igp_ss_overrides(rdev, ss, id);
     return 1;
    }
   }
   break;
  default:
   DRM_ERROR("Unsupported ASIC_InternalSS_Info table: %d %d\n", frev, crev);
   break;
  }

 }
 return 0;
}
