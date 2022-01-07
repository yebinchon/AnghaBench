
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u8 ;
struct radeon_encoder_atom_dig {int backlight_level; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct radeon_encoder {int devices; int encoder_id; struct radeon_encoder_atom_dig* enc_priv; struct drm_encoder base; } ;
struct TYPE_3__ {int firmware_flags; int atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_4__ {int ucAction; } ;
typedef TYPE_2__ DISPLAY_DEVICE_OUTPUT_CONTROL_PS_ALLOCATION ;


 int ATOM_BIOS_INFO_BL_CONTROLLED_BY_GPU ;
 int ATOM_DEVICE_LCD_SUPPORT ;
 int ATOM_LCD_BLOFF ;
 int ATOM_LCD_BLON ;
 int ATOM_LCD_BL_BRIGHTNESS_CONTROL ;
 int ATOM_TRANSMITTER_ACTION_BL_BRIGHTNESS_CONTROL ;
 int ATOM_TRANSMITTER_ACTION_LCD_BLOFF ;
 int ATOM_TRANSMITTER_ACTION_LCD_BLON ;
 int COMMAND ;






 int GetIndexIntoMasterTable (int ,int ) ;
 int LCD1OutputControl ;
 int atom_execute_table (int ,int,int *) ;
 int atombios_dig_transmitter_setup (struct drm_encoder*,int ,int ,int ) ;
 int radeon_atom_set_backlight_level_to_reg (struct radeon_device*,int ) ;

void
atombios_set_backlight_level(struct radeon_encoder *radeon_encoder, u8 level)
{
 struct drm_encoder *encoder = &radeon_encoder->base;
 struct drm_device *dev = radeon_encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder_atom_dig *dig;
 DISPLAY_DEVICE_OUTPUT_CONTROL_PS_ALLOCATION args;
 int index;

 if (!(rdev->mode_info.firmware_flags & ATOM_BIOS_INFO_BL_CONTROLLED_BY_GPU))
  return;

 if ((radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT)) &&
     radeon_encoder->enc_priv) {
  dig = radeon_encoder->enc_priv;
  dig->backlight_level = level;
  radeon_atom_set_backlight_level_to_reg(rdev, dig->backlight_level);

  switch (radeon_encoder->encoder_id) {
  case 132:
  case 131:
   index = GetIndexIntoMasterTable(COMMAND, LCD1OutputControl);
   if (dig->backlight_level == 0) {
    args.ucAction = ATOM_LCD_BLOFF;
    atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
   } else {
    args.ucAction = ATOM_LCD_BL_BRIGHTNESS_CONTROL;
    atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
    args.ucAction = ATOM_LCD_BLON;
    atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
   }
   break;
  case 130:
  case 133:
  case 129:
  case 128:
   if (dig->backlight_level == 0)
    atombios_dig_transmitter_setup(encoder, ATOM_TRANSMITTER_ACTION_LCD_BLOFF, 0, 0);
   else {
    atombios_dig_transmitter_setup(encoder, ATOM_TRANSMITTER_ACTION_BL_BRIGHTNESS_CONTROL, 0, 0);
    atombios_dig_transmitter_setup(encoder, ATOM_TRANSMITTER_ACTION_LCD_BLON, 0, 0);
   }
   break;
  default:
   break;
  }
 }
}
