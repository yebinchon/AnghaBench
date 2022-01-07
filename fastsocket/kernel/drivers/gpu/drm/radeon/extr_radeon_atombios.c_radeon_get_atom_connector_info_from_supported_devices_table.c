
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_19__ {TYPE_5__* asIntSrcInfo; } ;
struct TYPE_14__ {TYPE_7__* asConnInfo; int usDeviceSupport; } ;
union atom_supported_devices {TYPE_6__ info_2d1; TYPE_1__ info; } ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int u8 ;
struct radeon_router {int ddc_valid; int cd_valid; } ;
struct radeon_mode_info {struct atom_context* atom_context; } ;
struct radeon_device {struct radeon_mode_info mode_info; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_13__ {void* hpd; } ;
struct TYPE_21__ {int valid; } ;
struct bios_connector {int valid; int line_mux; int devices; TYPE_10__ hpd; TYPE_8__ ddc_bus; scalar_t__ connector_type; } ;
struct atom_context {int bios; } ;
struct TYPE_17__ {int ucAccess; } ;
struct TYPE_15__ {size_t bfConnectorType; int bfAssociatedDAC; } ;
struct TYPE_16__ {TYPE_2__ sbfAccess; } ;
struct TYPE_20__ {TYPE_4__ sucI2cId; TYPE_3__ sucConnectorInfo; } ;
struct TYPE_18__ {int ucIntSrcBitmap; } ;
typedef TYPE_7__ ATOM_CONNECTOR_INFO_I2C ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 int ATOM_DEVICE_CRT1_INDEX ;
 int ATOM_DEVICE_CRT2_INDEX ;
 int ATOM_DEVICE_CRT_SUPPORT ;
 int ATOM_DEVICE_CV_INDEX ;
 int ATOM_DEVICE_DFP1_INDEX ;
 int ATOM_DEVICE_DFP2_INDEX ;
 int ATOM_DEVICE_DFP_SUPPORT ;
 int ATOM_DEVICE_LCD_SUPPORT ;
 int ATOM_DEVICE_TV1_INDEX ;
 int ATOM_DEVICE_TV2_INDEX ;
 int ATOM_MAX_SUPPORTED_DEVICE ;
 int ATOM_MAX_SUPPORTED_DEVICE_INFO ;
 int DATA ;
 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ DRM_MODE_CONNECTOR_DVII ;
 scalar_t__ DRM_MODE_CONNECTOR_Unknown ;
 scalar_t__ DRM_MODE_CONNECTOR_VGA ;
 int GFP_KERNEL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 void* RADEON_HPD_1 ;
 void* RADEON_HPD_2 ;
 void* RADEON_HPD_NONE ;
 int SupportedDevicesInfo ;
 int atom_parse_data_header (struct atom_context*,int,int*,int*,int*,int*) ;
 int atombios_get_connector_object_id (struct drm_device*,scalar_t__,int) ;
 int kfree (struct bios_connector*) ;
 struct bios_connector* kzalloc (size_t,int ) ;
 int le16_to_cpu (int ) ;
 int radeon_add_atom_connector (struct drm_device*,int,int,scalar_t__,TYPE_8__*,int ,int,TYPE_10__*,struct radeon_router*) ;
 int radeon_add_atom_encoder (struct drm_device*,int ,int,int ) ;
 int radeon_add_legacy_encoder (struct drm_device*,int ,int) ;
 int radeon_atom_apply_quirks (struct drm_device*,int,scalar_t__*,TYPE_8__*,int*,TYPE_10__*) ;
 int radeon_get_encoder_enum (struct drm_device*,int,int) ;
 int radeon_link_encoder_connector (struct drm_device*) ;
 TYPE_8__ radeon_lookup_i2c_gpio (struct radeon_device*,int) ;
 scalar_t__ radeon_r4xx_atom ;
 scalar_t__* supported_devices_connector_convert ;

bool radeon_get_atom_connector_info_from_supported_devices_table(struct
         drm_device
         *dev)
{
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 struct atom_context *ctx = mode_info->atom_context;
 int index = GetIndexIntoMasterTable(DATA, SupportedDevicesInfo);
 uint16_t size, data_offset;
 uint8_t frev, crev;
 uint16_t device_support;
 uint8_t dac;
 union atom_supported_devices *supported_devices;
 int i, j, max_device;
 struct bios_connector *bios_connectors;
 size_t bc_size = sizeof(*bios_connectors) * ATOM_MAX_SUPPORTED_DEVICE;
 struct radeon_router router;

 router.ddc_valid = 0;
 router.cd_valid = 0;

 bios_connectors = kzalloc(bc_size, GFP_KERNEL);
 if (!bios_connectors)
  return 0;

 if (!atom_parse_data_header(ctx, index, &size, &frev, &crev,
        &data_offset)) {
  kfree(bios_connectors);
  return 0;
 }

 supported_devices =
     (union atom_supported_devices *)(ctx->bios + data_offset);

 device_support = le16_to_cpu(supported_devices->info.usDeviceSupport);

 if (frev > 1)
  max_device = ATOM_MAX_SUPPORTED_DEVICE;
 else
  max_device = ATOM_MAX_SUPPORTED_DEVICE_INFO;

 for (i = 0; i < max_device; i++) {
  ATOM_CONNECTOR_INFO_I2C ci =
      supported_devices->info.asConnInfo[i];

  bios_connectors[i].valid = 0;

  if (!(device_support & (1 << i))) {
   continue;
  }

  if (i == ATOM_DEVICE_CV_INDEX) {
   DRM_DEBUG_KMS("Skipping Component Video\n");
   continue;
  }

  bios_connectors[i].connector_type =
      supported_devices_connector_convert[ci.sucConnectorInfo.
       sbfAccess.
       bfConnectorType];

  if (bios_connectors[i].connector_type ==
      DRM_MODE_CONNECTOR_Unknown)
   continue;

  dac = ci.sucConnectorInfo.sbfAccess.bfAssociatedDAC;

  bios_connectors[i].line_mux =
   ci.sucI2cId.ucAccess;


  if (i == ATOM_DEVICE_TV1_INDEX) {
   bios_connectors[i].ddc_bus.valid = 0;
   bios_connectors[i].line_mux = 50;
  } else if (i == ATOM_DEVICE_TV2_INDEX) {
   bios_connectors[i].ddc_bus.valid = 0;
   bios_connectors[i].line_mux = 51;
  } else if (i == ATOM_DEVICE_CV_INDEX) {
   bios_connectors[i].ddc_bus.valid = 0;
   bios_connectors[i].line_mux = 52;
  } else
   bios_connectors[i].ddc_bus =
       radeon_lookup_i2c_gpio(rdev,
         bios_connectors[i].line_mux);

  if ((crev > 1) && (frev > 1)) {
   u8 isb = supported_devices->info_2d1.asIntSrcInfo[i].ucIntSrcBitmap;
   switch (isb) {
   case 0x4:
    bios_connectors[i].hpd.hpd = RADEON_HPD_1;
    break;
   case 0xa:
    bios_connectors[i].hpd.hpd = RADEON_HPD_2;
    break;
   default:
    bios_connectors[i].hpd.hpd = RADEON_HPD_NONE;
    break;
   }
  } else {
   if (i == ATOM_DEVICE_DFP1_INDEX)
    bios_connectors[i].hpd.hpd = RADEON_HPD_1;
   else if (i == ATOM_DEVICE_DFP2_INDEX)
    bios_connectors[i].hpd.hpd = RADEON_HPD_2;
   else
    bios_connectors[i].hpd.hpd = RADEON_HPD_NONE;
  }





  if (i == ATOM_DEVICE_CRT1_INDEX || i == ATOM_DEVICE_CRT2_INDEX)
   bios_connectors[i].connector_type =
       DRM_MODE_CONNECTOR_VGA;

  if (!radeon_atom_apply_quirks
      (dev, (1 << i), &bios_connectors[i].connector_type,
       &bios_connectors[i].ddc_bus, &bios_connectors[i].line_mux,
       &bios_connectors[i].hpd))
   continue;

  bios_connectors[i].valid = 1;
  bios_connectors[i].devices = (1 << i);

  if (ASIC_IS_AVIVO(rdev) || radeon_r4xx_atom)
   radeon_add_atom_encoder(dev,
      radeon_get_encoder_enum(dev,
              (1 << i),
              dac),
      (1 << i),
      0);
  else
   radeon_add_legacy_encoder(dev,
        radeon_get_encoder_enum(dev,
         (1 << i),
         dac),
        (1 << i));
 }


 for (i = 0; i < max_device; i++) {
  if (bios_connectors[i].valid) {
   for (j = 0; j < max_device; j++) {
    if (bios_connectors[j].valid && (i != j)) {
     if (bios_connectors[i].line_mux ==
         bios_connectors[j].line_mux) {

      if (bios_connectors[i].devices & (ATOM_DEVICE_LCD_SUPPORT)) {
       bios_connectors[i].line_mux = 53;
       bios_connectors[i].ddc_bus.valid = 0;
       continue;
      }
      if (bios_connectors[j].devices & (ATOM_DEVICE_LCD_SUPPORT)) {
       bios_connectors[j].line_mux = 53;
       bios_connectors[j].ddc_bus.valid = 0;
       continue;
      }

      if (((bios_connectors[i].devices & (ATOM_DEVICE_DFP_SUPPORT)) &&
           (bios_connectors[j].devices & (ATOM_DEVICE_CRT_SUPPORT))) ||
          ((bios_connectors[j].devices & (ATOM_DEVICE_DFP_SUPPORT)) &&
           (bios_connectors[i].devices & (ATOM_DEVICE_CRT_SUPPORT)))) {
       bios_connectors[i].devices |=
        bios_connectors[j].devices;
       bios_connectors[i].connector_type =
        DRM_MODE_CONNECTOR_DVII;
       if (bios_connectors[j].devices & (ATOM_DEVICE_DFP_SUPPORT))
        bios_connectors[i].hpd =
         bios_connectors[j].hpd;
       bios_connectors[j].valid = 0;
      }
     }
    }
   }
  }
 }


 for (i = 0; i < max_device; i++) {
  if (bios_connectors[i].valid) {
   uint16_t connector_object_id =
    atombios_get_connector_object_id(dev,
            bios_connectors[i].connector_type,
            bios_connectors[i].devices);
   radeon_add_atom_connector(dev,
        bios_connectors[i].line_mux,
        bios_connectors[i].devices,
        bios_connectors[i].
        connector_type,
        &bios_connectors[i].ddc_bus,
        0,
        connector_object_id,
        &bios_connectors[i].hpd,
        &router);
  }
 }

 radeon_link_encoder_connector(dev);

 kfree(bios_connectors);
 return 1;
}
