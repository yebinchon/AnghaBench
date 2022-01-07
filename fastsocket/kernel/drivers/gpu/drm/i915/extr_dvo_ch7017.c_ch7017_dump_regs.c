
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct intel_dvo_device {int dummy; } ;


 int CH7017_ACTIVE_INPUT_LINE_OUTPUT ;
 int CH7017_HORIZONTAL_ACTIVE_PIXEL_INPUT ;
 int CH7017_HORIZONTAL_ACTIVE_PIXEL_OUTPUT ;
 int CH7017_LVDS_CONTROL_2 ;
 int CH7017_LVDS_PLL_FEEDBACK_DIV ;
 int CH7017_LVDS_PLL_VCO_CONTROL ;
 int CH7017_LVDS_POWER_DOWN ;
 int CH7017_OUTPUTS_ENABLE ;
 int CH7017_VERTICAL_ACTIVE_LINE_OUTPUT ;
 int DUMP (int ) ;

__attribute__((used)) static void ch7017_dump_regs(struct intel_dvo_device *dvo)
{
 uint8_t val;







 do { ch7017_read(dvo, CH7017_HORIZONTAL_ACTIVE_PIXEL_INPUT, &val); DRM_DEBUG_KMS("CH7017_HORIZONTAL_ACTIVE_PIXEL_INPUT" ": %02x\n", val); } while (0);
 do { ch7017_read(dvo, CH7017_HORIZONTAL_ACTIVE_PIXEL_OUTPUT, &val); DRM_DEBUG_KMS("CH7017_HORIZONTAL_ACTIVE_PIXEL_OUTPUT" ": %02x\n", val); } while (0);
 do { ch7017_read(dvo, CH7017_VERTICAL_ACTIVE_LINE_OUTPUT, &val); DRM_DEBUG_KMS("CH7017_VERTICAL_ACTIVE_LINE_OUTPUT" ": %02x\n", val); } while (0);
 do { ch7017_read(dvo, CH7017_ACTIVE_INPUT_LINE_OUTPUT, &val); DRM_DEBUG_KMS("CH7017_ACTIVE_INPUT_LINE_OUTPUT" ": %02x\n", val); } while (0);
 do { ch7017_read(dvo, CH7017_LVDS_PLL_VCO_CONTROL, &val); DRM_DEBUG_KMS("CH7017_LVDS_PLL_VCO_CONTROL" ": %02x\n", val); } while (0);
 do { ch7017_read(dvo, CH7017_LVDS_PLL_FEEDBACK_DIV, &val); DRM_DEBUG_KMS("CH7017_LVDS_PLL_FEEDBACK_DIV" ": %02x\n", val); } while (0);
 do { ch7017_read(dvo, CH7017_LVDS_CONTROL_2, &val); DRM_DEBUG_KMS("CH7017_LVDS_CONTROL_2" ": %02x\n", val); } while (0);
 do { ch7017_read(dvo, CH7017_OUTPUTS_ENABLE, &val); DRM_DEBUG_KMS("CH7017_OUTPUTS_ENABLE" ": %02x\n", val); } while (0);
 do { ch7017_read(dvo, CH7017_LVDS_POWER_DOWN, &val); DRM_DEBUG_KMS("CH7017_LVDS_POWER_DOWN" ": %02x\n", val); } while (0);
}
