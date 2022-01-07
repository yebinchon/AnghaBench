
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


typedef int u8 ;
typedef int u16 ;
struct radeon_mode_info {TYPE_7__* atom_context; } ;
struct radeon_device {struct radeon_mode_info mode_info; } ;
struct drm_display_mode {int crtc_htotal; int crtc_hdisplay; int crtc_hsync_start; int crtc_hsync_end; int crtc_vtotal; int crtc_vdisplay; int crtc_vsync_start; int crtc_vsync_end; int clock; int flags; } ;
struct TYPE_14__ {int bios; } ;
struct TYPE_13__ {TYPE_2__* aModeTimings; } ;
struct TYPE_12__ {TYPE_4__* aModeTimings; } ;
struct TYPE_10__ {int usAccess; } ;
struct TYPE_11__ {int usPixClk; TYPE_3__ susModeMiscInfo; int usVSyncWidth; int usVSyncOffset; int usVActive; int usVBlanking_Time; int usHSyncWidth; int usHSyncOffset; int usHActive; int usHBlanking_Time; } ;
struct TYPE_8__ {int usAccess; } ;
struct TYPE_9__ {int usPixelClock; TYPE_1__ susModeMiscInfo; int usCRTC_V_SyncWidth; int usCRTC_V_SyncStart; int usCRTC_V_Disp; int usCRTC_V_Total; int usCRTC_H_SyncWidth; int usCRTC_H_SyncStart; int usCRTC_H_Disp; int usCRTC_H_Total; } ;
typedef TYPE_4__ ATOM_DTD_FORMAT ;
typedef TYPE_5__ ATOM_ANALOG_TV_INFO_V1_2 ;
typedef TYPE_6__ ATOM_ANALOG_TV_INFO ;


 int ATOM_COMPOSITESYNC ;
 int ATOM_DOUBLE_CLOCK_MODE ;
 int ATOM_HSYNC_POLARITY ;
 int ATOM_INTERLACE ;
 int ATOM_VSYNC_POLARITY ;
 int AnalogTV_Info ;
 int DATA ;
 int DRM_MODE_FLAG_CSYNC ;
 int DRM_MODE_FLAG_DBLSCAN ;
 int DRM_MODE_FLAG_INTERLACE ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int MAX_SUPPORTED_TV_TIMING ;
 int MAX_SUPPORTED_TV_TIMING_V1_2 ;
 int atom_parse_data_header (TYPE_7__*,int,int *,int*,int*,int*) ;
 int le16_to_cpu (int ) ;

bool radeon_atom_get_tv_timings(struct radeon_device *rdev, int index,
    struct drm_display_mode *mode)
{
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 ATOM_ANALOG_TV_INFO *tv_info;
 ATOM_ANALOG_TV_INFO_V1_2 *tv_info_v1_2;
 ATOM_DTD_FORMAT *dtd_timings;
 int data_index = GetIndexIntoMasterTable(DATA, AnalogTV_Info);
 u8 frev, crev;
 u16 data_offset, misc;

 if (!atom_parse_data_header(mode_info->atom_context, data_index, ((void*)0),
        &frev, &crev, &data_offset))
  return 0;

 switch (crev) {
 case 1:
  tv_info = (ATOM_ANALOG_TV_INFO *)(mode_info->atom_context->bios + data_offset);
  if (index >= MAX_SUPPORTED_TV_TIMING)
   return 0;

  mode->crtc_htotal = le16_to_cpu(tv_info->aModeTimings[index].usCRTC_H_Total);
  mode->crtc_hdisplay = le16_to_cpu(tv_info->aModeTimings[index].usCRTC_H_Disp);
  mode->crtc_hsync_start = le16_to_cpu(tv_info->aModeTimings[index].usCRTC_H_SyncStart);
  mode->crtc_hsync_end = le16_to_cpu(tv_info->aModeTimings[index].usCRTC_H_SyncStart) +
   le16_to_cpu(tv_info->aModeTimings[index].usCRTC_H_SyncWidth);

  mode->crtc_vtotal = le16_to_cpu(tv_info->aModeTimings[index].usCRTC_V_Total);
  mode->crtc_vdisplay = le16_to_cpu(tv_info->aModeTimings[index].usCRTC_V_Disp);
  mode->crtc_vsync_start = le16_to_cpu(tv_info->aModeTimings[index].usCRTC_V_SyncStart);
  mode->crtc_vsync_end = le16_to_cpu(tv_info->aModeTimings[index].usCRTC_V_SyncStart) +
   le16_to_cpu(tv_info->aModeTimings[index].usCRTC_V_SyncWidth);

  mode->flags = 0;
  misc = le16_to_cpu(tv_info->aModeTimings[index].susModeMiscInfo.usAccess);
  if (misc & ATOM_VSYNC_POLARITY)
   mode->flags |= DRM_MODE_FLAG_NVSYNC;
  if (misc & ATOM_HSYNC_POLARITY)
   mode->flags |= DRM_MODE_FLAG_NHSYNC;
  if (misc & ATOM_COMPOSITESYNC)
   mode->flags |= DRM_MODE_FLAG_CSYNC;
  if (misc & ATOM_INTERLACE)
   mode->flags |= DRM_MODE_FLAG_INTERLACE;
  if (misc & ATOM_DOUBLE_CLOCK_MODE)
   mode->flags |= DRM_MODE_FLAG_DBLSCAN;

  mode->clock = le16_to_cpu(tv_info->aModeTimings[index].usPixelClock) * 10;

  if (index == 1) {

   mode->crtc_htotal -= 1;
   mode->crtc_vtotal -= 1;
  }
  break;
 case 2:
  tv_info_v1_2 = (ATOM_ANALOG_TV_INFO_V1_2 *)(mode_info->atom_context->bios + data_offset);
  if (index >= MAX_SUPPORTED_TV_TIMING_V1_2)
   return 0;

  dtd_timings = &tv_info_v1_2->aModeTimings[index];
  mode->crtc_htotal = le16_to_cpu(dtd_timings->usHActive) +
   le16_to_cpu(dtd_timings->usHBlanking_Time);
  mode->crtc_hdisplay = le16_to_cpu(dtd_timings->usHActive);
  mode->crtc_hsync_start = le16_to_cpu(dtd_timings->usHActive) +
   le16_to_cpu(dtd_timings->usHSyncOffset);
  mode->crtc_hsync_end = mode->crtc_hsync_start +
   le16_to_cpu(dtd_timings->usHSyncWidth);

  mode->crtc_vtotal = le16_to_cpu(dtd_timings->usVActive) +
   le16_to_cpu(dtd_timings->usVBlanking_Time);
  mode->crtc_vdisplay = le16_to_cpu(dtd_timings->usVActive);
  mode->crtc_vsync_start = le16_to_cpu(dtd_timings->usVActive) +
   le16_to_cpu(dtd_timings->usVSyncOffset);
  mode->crtc_vsync_end = mode->crtc_vsync_start +
   le16_to_cpu(dtd_timings->usVSyncWidth);

  mode->flags = 0;
  misc = le16_to_cpu(dtd_timings->susModeMiscInfo.usAccess);
  if (misc & ATOM_VSYNC_POLARITY)
   mode->flags |= DRM_MODE_FLAG_NVSYNC;
  if (misc & ATOM_HSYNC_POLARITY)
   mode->flags |= DRM_MODE_FLAG_NHSYNC;
  if (misc & ATOM_COMPOSITESYNC)
   mode->flags |= DRM_MODE_FLAG_CSYNC;
  if (misc & ATOM_INTERLACE)
   mode->flags |= DRM_MODE_FLAG_INTERLACE;
  if (misc & ATOM_DOUBLE_CLOCK_MODE)
   mode->flags |= DRM_MODE_FLAG_DBLSCAN;

  mode->clock = le16_to_cpu(dtd_timings->usPixClk) * 10;
  break;
 }
 return 1;
}
