
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct radeon_encoder {int encoder_id; int devices; int active_device; } ;
struct TYPE_4__ {int atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef int args ;
struct TYPE_5__ {int ucAction; } ;
typedef TYPE_2__ DISPLAY_DEVICE_OUTPUT_CONTROL_PS_ALLOCATION ;


 int ATOM_DEVICE_CV_SUPPORT ;
 int ATOM_DEVICE_LCD_SUPPORT ;
 int ATOM_DEVICE_TV_SUPPORT ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int ATOM_LCD_BLOFF ;
 int ATOM_LCD_BLON ;
 int ATOM_S3_DFP2I_ACTIVE ;
 int COMMAND ;
 int CV1OutputControl ;
 int DAC1OutputControl ;
 int DAC2OutputControl ;




 int DVOOutputControl ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int LCD1OutputControl ;
 int LVTMAOutputControl ;
 int RADEON_BIOS_3_SCRATCH ;
 int RREG32 (int ) ;
 int TMDSAOutputControl ;
 int TV1OutputControl ;
 int WREG32 (int ,int) ;
 int atom_execute_table (int ,int,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
radeon_atom_encoder_dpms_avivo(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 DISPLAY_DEVICE_OUTPUT_CONTROL_PS_ALLOCATION args;
 int index = 0;

 memset(&args, 0, sizeof(args));

 switch (radeon_encoder->encoder_id) {
 case 128:
 case 131:
  index = GetIndexIntoMasterTable(COMMAND, TMDSAOutputControl);
  break;
 case 135:
 case 136:
 case 132:
  index = GetIndexIntoMasterTable(COMMAND, DVOOutputControl);
  break;
 case 130:
  index = GetIndexIntoMasterTable(COMMAND, LCD1OutputControl);
  break;
 case 129:
  if (radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT))
   index = GetIndexIntoMasterTable(COMMAND, LCD1OutputControl);
  else
   index = GetIndexIntoMasterTable(COMMAND, LVTMAOutputControl);
  break;
 case 138:
 case 134:
  if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT))
   index = GetIndexIntoMasterTable(COMMAND, TV1OutputControl);
  else if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT))
   index = GetIndexIntoMasterTable(COMMAND, CV1OutputControl);
  else
   index = GetIndexIntoMasterTable(COMMAND, DAC1OutputControl);
  break;
 case 137:
 case 133:
  if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT))
   index = GetIndexIntoMasterTable(COMMAND, TV1OutputControl);
  else if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT))
   index = GetIndexIntoMasterTable(COMMAND, CV1OutputControl);
  else
   index = GetIndexIntoMasterTable(COMMAND, DAC2OutputControl);
  break;
 default:
  return;
 }

 switch (mode) {
 case 141:
  args.ucAction = ATOM_ENABLE;

  if (radeon_encoder->encoder_id == 136) {
   u32 reg = RREG32(RADEON_BIOS_3_SCRATCH);
   WREG32(RADEON_BIOS_3_SCRATCH, reg & ~ATOM_S3_DFP2I_ACTIVE);
   atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
   WREG32(RADEON_BIOS_3_SCRATCH, reg);
  } else
   atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
  if (radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT)) {
   args.ucAction = ATOM_LCD_BLON;
   atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
  }
  break;
 case 140:
 case 139:
 case 142:
  args.ucAction = ATOM_DISABLE;
  atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
  if (radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT)) {
   args.ucAction = ATOM_LCD_BLOFF;
   atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
  }
  break;
 }
}
