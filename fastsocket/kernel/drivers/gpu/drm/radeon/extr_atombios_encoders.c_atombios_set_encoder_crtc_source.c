
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ucCRTC; void* ucEncoderID; void* ucEncodeMode; } ;
struct TYPE_4__ {int ucCRTC; void* ucDevice; } ;
union crtc_source_param {TYPE_2__ v2; TYPE_1__ v1; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct radeon_encoder_atom_dig {int dig_encoder; } ;
struct radeon_encoder {int encoder_id; int devices; int active_device; struct radeon_encoder_atom_dig* enc_priv; } ;
struct TYPE_6__ {int atom_context; } ;
struct radeon_device {TYPE_3__ mode_info; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_encoder {int crtc; struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int connector_type; } ;
typedef int args ;


 void* ASIC_INT_DAC1_ENCODER_ID ;
 void* ASIC_INT_DAC2_ENCODER_ID ;
 void* ASIC_INT_DIG1_ENCODER_ID ;
 void* ASIC_INT_DIG2_ENCODER_ID ;
 void* ASIC_INT_DIG3_ENCODER_ID ;
 void* ASIC_INT_DIG4_ENCODER_ID ;
 void* ASIC_INT_DIG5_ENCODER_ID ;
 void* ASIC_INT_DIG6_ENCODER_ID ;
 void* ASIC_INT_DVO_ENCODER_ID ;
 void* ASIC_INT_TV_ENCODER_ID ;
 int ASIC_IS_AVIVO (struct radeon_device*) ;
 void* ATOM_DEVICE_CRT1_INDEX ;
 void* ATOM_DEVICE_CRT2_INDEX ;
 void* ATOM_DEVICE_CV_INDEX ;
 int ATOM_DEVICE_CV_SUPPORT ;
 void* ATOM_DEVICE_DFP1_INDEX ;
 void* ATOM_DEVICE_DFP2_INDEX ;
 void* ATOM_DEVICE_DFP3_INDEX ;
 void* ATOM_DEVICE_LCD1_INDEX ;
 int ATOM_DEVICE_LCD1_SUPPORT ;
 void* ATOM_DEVICE_TV1_INDEX ;
 int ATOM_DEVICE_TV_SUPPORT ;
 void* ATOM_ENCODER_MODE_CRT ;
 void* ATOM_ENCODER_MODE_LVDS ;
 int COMMAND ;
 int DRM_ERROR (char*,int,int) ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int DRM_MODE_CONNECTOR_VGA ;
 int ENCODER_OBJECT_ID_NONE ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SelectCRTC_Source ;
 int atom_execute_table (int ,int,int *) ;
 int atom_parse_cmd_header (int ,int,int*,int*) ;
 void* atombios_get_encoder_mode (struct drm_encoder*) ;
 int memset (union crtc_source_param*,int ,int) ;
 int radeon_atombios_encoder_crtc_scratch_regs (struct drm_encoder*,int) ;
 int radeon_encoder_get_dp_bridge_encoder_id (struct drm_encoder*) ;
 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;
 struct radeon_crtc* to_radeon_crtc (int ) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
atombios_set_encoder_crtc_source(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(encoder->crtc);
 union crtc_source_param args;
 int index = GetIndexIntoMasterTable(COMMAND, SelectCRTC_Source);
 uint8_t frev, crev;
 struct radeon_encoder_atom_dig *dig;

 memset(&args, 0, sizeof(args));

 if (!atom_parse_cmd_header(rdev->mode_info.atom_context, index, &frev, &crev))
  return;

 switch (frev) {
 case 1:
  switch (crev) {
  case 1:
  default:
   if (ASIC_IS_AVIVO(rdev))
    args.v1.ucCRTC = radeon_crtc->crtc_id;
   else {
    if (radeon_encoder->encoder_id == 142) {
     args.v1.ucCRTC = radeon_crtc->crtc_id;
    } else {
     args.v1.ucCRTC = radeon_crtc->crtc_id << 2;
    }
   }
   switch (radeon_encoder->encoder_id) {
   case 131:
   case 134:
    args.v1.ucDevice = ATOM_DEVICE_DFP1_INDEX;
    break;
   case 133:
   case 132:
    if (radeon_encoder->devices & ATOM_DEVICE_LCD1_SUPPORT)
     args.v1.ucDevice = ATOM_DEVICE_LCD1_INDEX;
    else
     args.v1.ucDevice = ATOM_DEVICE_DFP3_INDEX;
    break;
   case 139:
   case 140:
   case 136:
    args.v1.ucDevice = ATOM_DEVICE_DFP2_INDEX;
    break;
   case 142:
   case 138:
    if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT))
     args.v1.ucDevice = ATOM_DEVICE_TV1_INDEX;
    else if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT))
     args.v1.ucDevice = ATOM_DEVICE_CV_INDEX;
    else
     args.v1.ucDevice = ATOM_DEVICE_CRT1_INDEX;
    break;
   case 141:
   case 137:
    if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT))
     args.v1.ucDevice = ATOM_DEVICE_TV1_INDEX;
    else if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT))
     args.v1.ucDevice = ATOM_DEVICE_CV_INDEX;
    else
     args.v1.ucDevice = ATOM_DEVICE_CRT2_INDEX;
    break;
   }
   break;
  case 2:
   args.v2.ucCRTC = radeon_crtc->crtc_id;
   if (radeon_encoder_get_dp_bridge_encoder_id(encoder) != ENCODER_OBJECT_ID_NONE) {
    struct drm_connector *connector = radeon_get_connector_for_encoder(encoder);

    if (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)
     args.v2.ucEncodeMode = ATOM_ENCODER_MODE_LVDS;
    else if (connector->connector_type == DRM_MODE_CONNECTOR_VGA)
     args.v2.ucEncodeMode = ATOM_ENCODER_MODE_CRT;
    else
     args.v2.ucEncodeMode = atombios_get_encoder_mode(encoder);
   } else
    args.v2.ucEncodeMode = atombios_get_encoder_mode(encoder);
   switch (radeon_encoder->encoder_id) {
   case 130:
   case 129:
   case 128:
   case 135:
    dig = radeon_encoder->enc_priv;
    switch (dig->dig_encoder) {
    case 0:
     args.v2.ucEncoderID = ASIC_INT_DIG1_ENCODER_ID;
     break;
    case 1:
     args.v2.ucEncoderID = ASIC_INT_DIG2_ENCODER_ID;
     break;
    case 2:
     args.v2.ucEncoderID = ASIC_INT_DIG3_ENCODER_ID;
     break;
    case 3:
     args.v2.ucEncoderID = ASIC_INT_DIG4_ENCODER_ID;
     break;
    case 4:
     args.v2.ucEncoderID = ASIC_INT_DIG5_ENCODER_ID;
     break;
    case 5:
     args.v2.ucEncoderID = ASIC_INT_DIG6_ENCODER_ID;
     break;
    }
    break;
   case 136:
    args.v2.ucEncoderID = ASIC_INT_DVO_ENCODER_ID;
    break;
   case 138:
    if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT))
     args.v2.ucEncoderID = ASIC_INT_TV_ENCODER_ID;
    else if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT))
     args.v2.ucEncoderID = ASIC_INT_TV_ENCODER_ID;
    else
     args.v2.ucEncoderID = ASIC_INT_DAC1_ENCODER_ID;
    break;
   case 137:
    if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT))
     args.v2.ucEncoderID = ASIC_INT_TV_ENCODER_ID;
    else if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT))
     args.v2.ucEncoderID = ASIC_INT_TV_ENCODER_ID;
    else
     args.v2.ucEncoderID = ASIC_INT_DAC2_ENCODER_ID;
    break;
   }
   break;
  }
  break;
 default:
  DRM_ERROR("Unknown table version: %d, %d\n", frev, crev);
  return;
 }

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);


 radeon_atombios_encoder_crtc_scratch_regs(encoder, radeon_crtc->crtc_id);
}
