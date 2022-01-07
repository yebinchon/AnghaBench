
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_encoder_atom_dac {int tv_std; } ;
struct radeon_encoder {int encoder_id; int active_device; int pixel_clock; struct radeon_encoder_atom_dac* enc_priv; } ;
struct TYPE_4__ {int atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef int args ;
struct TYPE_5__ {int ucAction; int usPixelClock; int ucDacStandard; } ;
typedef TYPE_2__ DAC_ENCODER_CONTROL_PS_ALLOCATION ;


 int ATOM_DAC1_CV ;
 int ATOM_DAC1_NTSC ;
 int ATOM_DAC1_PAL ;
 int ATOM_DAC1_PS2 ;
 int ATOM_DEVICE_CRT_SUPPORT ;
 int ATOM_DEVICE_CV_SUPPORT ;
 int COMMAND ;
 int DAC1EncoderControl ;
 int DAC2EncoderControl ;




 int GetIndexIntoMasterTable (int ,int ) ;
 int atom_execute_table (int ,int,int *) ;
 int cpu_to_le16 (int) ;
 int memset (TYPE_2__*,int ,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
atombios_dac_setup(struct drm_encoder *encoder, int action)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 DAC_ENCODER_CONTROL_PS_ALLOCATION args;
 int index = 0;
 struct radeon_encoder_atom_dac *dac_info = radeon_encoder->enc_priv;

 memset(&args, 0, sizeof(args));

 switch (radeon_encoder->encoder_id) {
 case 139:
 case 137:
  index = GetIndexIntoMasterTable(COMMAND, DAC1EncoderControl);
  break;
 case 138:
 case 136:
  index = GetIndexIntoMasterTable(COMMAND, DAC2EncoderControl);
  break;
 }

 args.ucAction = action;

 if (radeon_encoder->active_device & (ATOM_DEVICE_CRT_SUPPORT))
  args.ucDacStandard = ATOM_DAC1_PS2;
 else if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT))
  args.ucDacStandard = ATOM_DAC1_CV;
 else {
  switch (dac_info->tv_std) {
  case 133:
  case 130:
  case 129:
  case 128:
  case 131:
   args.ucDacStandard = ATOM_DAC1_PAL;
   break;
  case 135:
  case 134:
  case 132:
  default:
   args.ucDacStandard = ATOM_DAC1_NTSC;
   break;
  }
 }
 args.usPixelClock = cpu_to_le16(radeon_encoder->pixel_clock / 10);

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

}
