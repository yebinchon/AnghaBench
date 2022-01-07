
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


struct TYPE_8__ {int susAccess; } ;
struct TYPE_13__ {TYPE_1__ usFirmwareCapability; int usMaxPixelClock; int ulDefaultMemoryClock; int ulDefaultEngineClock; int usMaxMemoryClockPLL_Input; int usMinMemoryClockPLL_Input; int ulMaxMemoryClockPLL_Output; int usMinMemoryClockPLL_Output; int usReferenceClock; int usMaxEngineClockPLL_Input; int usMinEngineClockPLL_Input; int ulMaxEngineClockPLL_Output; int usMinEngineClockPLL_Output; int usMaxPixelClockPLL_Input; int usMinPixelClockPLL_Input; int ulMaxPixelClockPLL_Output; int usMinPixelClockPLL_Output; } ;
struct TYPE_12__ {int usUniphyDPModeExtClkFreq; int ulDefaultDispEngineClkFreq; int usMemoryReferenceClock; int usCoreReferenceClock; } ;
struct TYPE_11__ {int usLcdMaxPixelClockPLL_Output; int usLcdMinPixelClockPLL_Output; } ;
struct TYPE_10__ {int ulMinPixelClockPLL_Output; } ;
union firmware_info {TYPE_6__ info; TYPE_5__ info_21; TYPE_4__ info_14; TYPE_3__ info_12; } ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct radeon_pll {int reference_freq; int pll_out_min; int pll_out_max; int lcd_pll_out_min; int lcd_pll_out_max; int pll_in_min; int pll_in_max; scalar_t__ reference_div; } ;
struct radeon_mode_info {int firmware_flags; TYPE_7__* atom_context; } ;
struct TYPE_9__ {int default_dispclk; int dp_extclk; int max_pixel_clock; void* default_mclk; void* default_sclk; struct radeon_pll mpll; struct radeon_pll spll; struct radeon_pll dcpll; struct radeon_pll p2pll; struct radeon_pll p1pll; } ;
struct radeon_device {struct radeon_mode_info mode_info; TYPE_2__ clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_14__ {scalar_t__ bios; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE5 (struct radeon_device*) ;
 int DATA ;
 int FirmwareInfo ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ atom_parse_data_header (TYPE_7__*,int,int *,int*,int*,scalar_t__*) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;

bool radeon_atom_get_clock_info(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, FirmwareInfo);
 union firmware_info *firmware_info;
 uint8_t frev, crev;
 struct radeon_pll *p1pll = &rdev->clock.p1pll;
 struct radeon_pll *p2pll = &rdev->clock.p2pll;
 struct radeon_pll *dcpll = &rdev->clock.dcpll;
 struct radeon_pll *spll = &rdev->clock.spll;
 struct radeon_pll *mpll = &rdev->clock.mpll;
 uint16_t data_offset;

 if (atom_parse_data_header(mode_info->atom_context, index, ((void*)0),
       &frev, &crev, &data_offset)) {
  firmware_info =
   (union firmware_info *)(mode_info->atom_context->bios +
      data_offset);

  p1pll->reference_freq =
      le16_to_cpu(firmware_info->info.usReferenceClock);
  p1pll->reference_div = 0;

  if (crev < 2)
   p1pll->pll_out_min =
    le16_to_cpu(firmware_info->info.usMinPixelClockPLL_Output);
  else
   p1pll->pll_out_min =
    le32_to_cpu(firmware_info->info_12.ulMinPixelClockPLL_Output);
  p1pll->pll_out_max =
      le32_to_cpu(firmware_info->info.ulMaxPixelClockPLL_Output);

  if (crev >= 4) {
   p1pll->lcd_pll_out_min =
    le16_to_cpu(firmware_info->info_14.usLcdMinPixelClockPLL_Output) * 100;
   if (p1pll->lcd_pll_out_min == 0)
    p1pll->lcd_pll_out_min = p1pll->pll_out_min;
   p1pll->lcd_pll_out_max =
    le16_to_cpu(firmware_info->info_14.usLcdMaxPixelClockPLL_Output) * 100;
   if (p1pll->lcd_pll_out_max == 0)
    p1pll->lcd_pll_out_max = p1pll->pll_out_max;
  } else {
   p1pll->lcd_pll_out_min = p1pll->pll_out_min;
   p1pll->lcd_pll_out_max = p1pll->pll_out_max;
  }

  if (p1pll->pll_out_min == 0) {
   if (ASIC_IS_AVIVO(rdev))
    p1pll->pll_out_min = 64800;
   else
    p1pll->pll_out_min = 20000;
  }

  p1pll->pll_in_min =
      le16_to_cpu(firmware_info->info.usMinPixelClockPLL_Input);
  p1pll->pll_in_max =
      le16_to_cpu(firmware_info->info.usMaxPixelClockPLL_Input);

  *p2pll = *p1pll;


  if (ASIC_IS_DCE4(rdev))
   spll->reference_freq =
    le16_to_cpu(firmware_info->info_21.usCoreReferenceClock);
  else
   spll->reference_freq =
    le16_to_cpu(firmware_info->info.usReferenceClock);
  spll->reference_div = 0;

  spll->pll_out_min =
      le16_to_cpu(firmware_info->info.usMinEngineClockPLL_Output);
  spll->pll_out_max =
      le32_to_cpu(firmware_info->info.ulMaxEngineClockPLL_Output);


  if (spll->pll_out_min == 0) {
   if (ASIC_IS_AVIVO(rdev))
    spll->pll_out_min = 64800;
   else
    spll->pll_out_min = 20000;
  }

  spll->pll_in_min =
      le16_to_cpu(firmware_info->info.usMinEngineClockPLL_Input);
  spll->pll_in_max =
      le16_to_cpu(firmware_info->info.usMaxEngineClockPLL_Input);


  if (ASIC_IS_DCE4(rdev))
   mpll->reference_freq =
    le16_to_cpu(firmware_info->info_21.usMemoryReferenceClock);
  else
   mpll->reference_freq =
    le16_to_cpu(firmware_info->info.usReferenceClock);
  mpll->reference_div = 0;

  mpll->pll_out_min =
      le16_to_cpu(firmware_info->info.usMinMemoryClockPLL_Output);
  mpll->pll_out_max =
      le32_to_cpu(firmware_info->info.ulMaxMemoryClockPLL_Output);


  if (mpll->pll_out_min == 0) {
   if (ASIC_IS_AVIVO(rdev))
    mpll->pll_out_min = 64800;
   else
    mpll->pll_out_min = 20000;
  }

  mpll->pll_in_min =
      le16_to_cpu(firmware_info->info.usMinMemoryClockPLL_Input);
  mpll->pll_in_max =
      le16_to_cpu(firmware_info->info.usMaxMemoryClockPLL_Input);

  rdev->clock.default_sclk =
      le32_to_cpu(firmware_info->info.ulDefaultEngineClock);
  rdev->clock.default_mclk =
      le32_to_cpu(firmware_info->info.ulDefaultMemoryClock);

  if (ASIC_IS_DCE4(rdev)) {
   rdev->clock.default_dispclk =
    le32_to_cpu(firmware_info->info_21.ulDefaultDispEngineClkFreq);
   if (rdev->clock.default_dispclk == 0) {
    if (ASIC_IS_DCE5(rdev))
     rdev->clock.default_dispclk = 54000;
    else
     rdev->clock.default_dispclk = 60000;
   }
   rdev->clock.dp_extclk =
    le16_to_cpu(firmware_info->info_21.usUniphyDPModeExtClkFreq);
  }
  *dcpll = *p1pll;

  rdev->clock.max_pixel_clock = le16_to_cpu(firmware_info->info.usMaxPixelClock);
  if (rdev->clock.max_pixel_clock == 0)
   rdev->clock.max_pixel_clock = 40000;


  rdev->mode_info.firmware_flags =
   le16_to_cpu(firmware_info->info.usFirmwareCapability.susAccess);

  return 1;
 }

 return 0;
}
