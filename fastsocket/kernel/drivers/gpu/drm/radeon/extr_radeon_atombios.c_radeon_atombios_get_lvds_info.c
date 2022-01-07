
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int usAccess; } ;
struct TYPE_12__ {int usImageVSize; int usImageHSize; TYPE_2__ susModeMiscInfo; int usVSyncWidth; int usVSyncOffset; int usVBlanking_Time; int usHSyncWidth; int usHSyncOffset; int usHBlanking_Time; int usVActive; int usHActive; int usPixClk; } ;
struct TYPE_11__ {int usModePatchTableOffset; int ucSS_Id; TYPE_4__ sLCDTiming; int ucLVDS_Misc; int usOffDelayInMs; } ;
union lvds_info {TYPE_3__ info; } ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int u8 ;
struct radeon_mode_info {int bios_hardcoded_edid_size; struct edid* bios_hardcoded_edid; TYPE_8__* atom_context; } ;
struct TYPE_15__ {int clock; int hdisplay; int vdisplay; int htotal; int hsync_start; int hsync_end; int vtotal; int vsync_start; int vsync_end; int width_mm; int height_mm; int flags; } ;
struct radeon_encoder_atom_dig {int panel_pwr_delay; int linkb; TYPE_7__ native_mode; int lcd_ss_id; int lcd_misc; } ;
struct TYPE_9__ {struct drm_device* dev; } ;
struct radeon_encoder {int encoder_enum; TYPE_7__ native_mode; TYPE_1__ base; } ;
struct radeon_device {struct radeon_mode_info mode_info; } ;
struct edid {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_16__ {int bios; } ;
struct TYPE_14__ {scalar_t__ ucFakeEDIDLength; int * ucFakeEDIDString; } ;
struct TYPE_13__ {int usHSize; int usVSize; } ;
typedef int ATOM_PATCH_RECORD_MODE ;
typedef TYPE_5__ ATOM_PANEL_RESOLUTION_PATCH_RECORD ;
typedef int ATOM_LCD_RTS_RECORD ;
typedef int ATOM_LCD_MODE_CONTROL_CAP ;
typedef TYPE_6__ ATOM_FAKE_EDID_PATCH_RECORD ;


 int ATOM_COMPOSITESYNC ;
 int ATOM_DOUBLE_CLOCK_MODE ;
 int ATOM_HSYNC_POLARITY ;
 int ATOM_INTERLACE ;
 int ATOM_RECORD_END_TYPE ;
 int ATOM_VSYNC_POLARITY ;
 int CRTC_INTERLACE_HALVE_V ;
 int DATA ;
 int DRM_ERROR (char*,int) ;
 int DRM_MODE_FLAG_CSYNC ;
 int DRM_MODE_FLAG_DBLSCAN ;
 int DRM_MODE_FLAG_INTERLACE ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 scalar_t__ EDID_LENGTH ;
 int ENUM_ID_MASK ;
 int ENUM_ID_SHIFT ;
 int GFP_KERNEL ;
 int GetIndexIntoMasterTable (int ,int ) ;





 int LVDS_Info ;
 scalar_t__ atom_parse_data_header (TYPE_8__*,int,int *,int*,int*,int*) ;
 int drm_edid_is_valid (struct edid*) ;
 int drm_mode_set_crtcinfo (TYPE_7__*,int ) ;
 int kfree (struct edid*) ;
 struct edid* kmalloc (int,int ) ;
 struct radeon_encoder_atom_dig* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int max (int,int) ;
 int memcpy (int*,int*,scalar_t__) ;

struct radeon_encoder_atom_dig *radeon_atombios_get_lvds_info(struct
             radeon_encoder
             *encoder)
{
 struct drm_device *dev = encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, LVDS_Info);
 uint16_t data_offset, misc;
 union lvds_info *lvds_info;
 uint8_t frev, crev;
 struct radeon_encoder_atom_dig *lvds = ((void*)0);
 int encoder_enum = (encoder->encoder_enum & ENUM_ID_MASK) >> ENUM_ID_SHIFT;

 if (atom_parse_data_header(mode_info->atom_context, index, ((void*)0),
       &frev, &crev, &data_offset)) {
  lvds_info =
   (union lvds_info *)(mode_info->atom_context->bios + data_offset);
  lvds =
      kzalloc(sizeof(struct radeon_encoder_atom_dig), GFP_KERNEL);

  if (!lvds)
   return ((void*)0);

  lvds->native_mode.clock =
      le16_to_cpu(lvds_info->info.sLCDTiming.usPixClk) * 10;
  lvds->native_mode.hdisplay =
      le16_to_cpu(lvds_info->info.sLCDTiming.usHActive);
  lvds->native_mode.vdisplay =
      le16_to_cpu(lvds_info->info.sLCDTiming.usVActive);
  lvds->native_mode.htotal = lvds->native_mode.hdisplay +
   le16_to_cpu(lvds_info->info.sLCDTiming.usHBlanking_Time);
  lvds->native_mode.hsync_start = lvds->native_mode.hdisplay +
   le16_to_cpu(lvds_info->info.sLCDTiming.usHSyncOffset);
  lvds->native_mode.hsync_end = lvds->native_mode.hsync_start +
   le16_to_cpu(lvds_info->info.sLCDTiming.usHSyncWidth);
  lvds->native_mode.vtotal = lvds->native_mode.vdisplay +
   le16_to_cpu(lvds_info->info.sLCDTiming.usVBlanking_Time);
  lvds->native_mode.vsync_start = lvds->native_mode.vdisplay +
   le16_to_cpu(lvds_info->info.sLCDTiming.usVSyncOffset);
  lvds->native_mode.vsync_end = lvds->native_mode.vsync_start +
   le16_to_cpu(lvds_info->info.sLCDTiming.usVSyncWidth);
  lvds->panel_pwr_delay =
      le16_to_cpu(lvds_info->info.usOffDelayInMs);
  lvds->lcd_misc = lvds_info->info.ucLVDS_Misc;

  misc = le16_to_cpu(lvds_info->info.sLCDTiming.susModeMiscInfo.usAccess);
  if (misc & ATOM_VSYNC_POLARITY)
   lvds->native_mode.flags |= DRM_MODE_FLAG_NVSYNC;
  if (misc & ATOM_HSYNC_POLARITY)
   lvds->native_mode.flags |= DRM_MODE_FLAG_NHSYNC;
  if (misc & ATOM_COMPOSITESYNC)
   lvds->native_mode.flags |= DRM_MODE_FLAG_CSYNC;
  if (misc & ATOM_INTERLACE)
   lvds->native_mode.flags |= DRM_MODE_FLAG_INTERLACE;
  if (misc & ATOM_DOUBLE_CLOCK_MODE)
   lvds->native_mode.flags |= DRM_MODE_FLAG_DBLSCAN;

  lvds->native_mode.width_mm = le16_to_cpu(lvds_info->info.sLCDTiming.usImageHSize);
  lvds->native_mode.height_mm = le16_to_cpu(lvds_info->info.sLCDTiming.usImageVSize);


  drm_mode_set_crtcinfo(&lvds->native_mode, CRTC_INTERLACE_HALVE_V);

  lvds->lcd_ss_id = lvds_info->info.ucSS_Id;

  encoder->native_mode = lvds->native_mode;

  if (encoder_enum == 2)
   lvds->linkb = 1;
  else
   lvds->linkb = 0;


  if (le16_to_cpu(lvds_info->info.usModePatchTableOffset)) {
   ATOM_FAKE_EDID_PATCH_RECORD *fake_edid_record;
   ATOM_PANEL_RESOLUTION_PATCH_RECORD *panel_res_record;
   bool bad_record = 0;
   u8 *record;

   if ((frev == 1) && (crev < 2))

    record = (u8 *)(mode_info->atom_context->bios +
      le16_to_cpu(lvds_info->info.usModePatchTableOffset));
   else

    record = (u8 *)(mode_info->atom_context->bios +
      data_offset +
      le16_to_cpu(lvds_info->info.usModePatchTableOffset));
   while (*record != ATOM_RECORD_END_TYPE) {
    switch (*record) {
    case 130:
     record += sizeof(ATOM_PATCH_RECORD_MODE);
     break;
    case 128:
     record += sizeof(ATOM_LCD_RTS_RECORD);
     break;
    case 132:
     record += sizeof(ATOM_LCD_MODE_CONTROL_CAP);
     break;
    case 131:
     fake_edid_record = (ATOM_FAKE_EDID_PATCH_RECORD *)record;
     if (fake_edid_record->ucFakeEDIDLength) {
      struct edid *edid;
      int edid_size =
       max((int)EDID_LENGTH, (int)fake_edid_record->ucFakeEDIDLength);
      edid = kmalloc(edid_size, GFP_KERNEL);
      if (edid) {
       memcpy((u8 *)edid, (u8 *)&fake_edid_record->ucFakeEDIDString[0],
              fake_edid_record->ucFakeEDIDLength);

       if (drm_edid_is_valid(edid)) {
        rdev->mode_info.bios_hardcoded_edid = edid;
        rdev->mode_info.bios_hardcoded_edid_size = edid_size;
       } else
        kfree(edid);
      }
     }
     record += sizeof(ATOM_FAKE_EDID_PATCH_RECORD);
     break;
    case 129:
     panel_res_record = (ATOM_PANEL_RESOLUTION_PATCH_RECORD *)record;
     lvds->native_mode.width_mm = panel_res_record->usHSize;
     lvds->native_mode.height_mm = panel_res_record->usVSize;
     record += sizeof(ATOM_PANEL_RESOLUTION_PATCH_RECORD);
     break;
    default:
     DRM_ERROR("Bad LCD record %d\n", *record);
     bad_record = 1;
     break;
    }
    if (bad_record)
     break;
   }
  }
 }
 return lvds;
}
