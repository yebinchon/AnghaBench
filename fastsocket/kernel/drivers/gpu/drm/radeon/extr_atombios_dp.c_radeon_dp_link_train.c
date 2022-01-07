
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radeon_encoder_atom_dig {scalar_t__ linkb; scalar_t__ dig_encoder; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_dp_link_train_info {int use_dpencoder; int tp3_supported; int dp_clock; int dp_lane_count; struct radeon_connector* radeon_connector; struct drm_connector* connector; struct drm_encoder* encoder; struct radeon_device* rdev; int dpcd; int enc_id; } ;
struct TYPE_2__ {int atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct radeon_connector_atom_dig {scalar_t__ dp_sink_type; int dp_clock; int dp_lane_count; int dpcd; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;


 scalar_t__ ASIC_IS_DCE5 (struct radeon_device*) ;
 int ATOM_DP_CONFIG_DIG1_ENCODER ;
 int ATOM_DP_CONFIG_DIG2_ENCODER ;
 int ATOM_DP_CONFIG_LINK_A ;
 int ATOM_DP_CONFIG_LINK_B ;
 int COMMAND ;
 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 scalar_t__ CONNECTOR_OBJECT_ID_eDP ;
 int DPEncoderService ;
 int DP_MAX_LANE_COUNT ;
 int DP_RECEIVER_CAP_SIZE ;
 int DP_TPS3_SUPPORTED ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ atom_parse_cmd_header (int ,int,int*,int*) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ radeon_dp_link_train_ce (struct radeon_dp_link_train_info*) ;
 scalar_t__ radeon_dp_link_train_cr (struct radeon_dp_link_train_info*) ;
 scalar_t__ radeon_dp_link_train_finish (struct radeon_dp_link_train_info*) ;
 scalar_t__ radeon_dp_link_train_init (struct radeon_dp_link_train_info*) ;
 int radeon_read_dpcd_reg (struct radeon_connector*,int ) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void radeon_dp_link_train(struct drm_encoder *encoder,
     struct drm_connector *connector)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig;
 struct radeon_connector *radeon_connector;
 struct radeon_connector_atom_dig *dig_connector;
 struct radeon_dp_link_train_info dp_info;
 int index;
 u8 tmp, frev, crev;

 if (!radeon_encoder->enc_priv)
  return;
 dig = radeon_encoder->enc_priv;

 radeon_connector = to_radeon_connector(connector);
 if (!radeon_connector->con_priv)
  return;
 dig_connector = radeon_connector->con_priv;

 if ((dig_connector->dp_sink_type != CONNECTOR_OBJECT_ID_DISPLAYPORT) &&
     (dig_connector->dp_sink_type != CONNECTOR_OBJECT_ID_eDP))
  return;





 dp_info.use_dpencoder = 1;
 index = GetIndexIntoMasterTable(COMMAND, DPEncoderService);
 if (atom_parse_cmd_header(rdev->mode_info.atom_context, index, &frev, &crev)) {
  if (crev > 1) {
   dp_info.use_dpencoder = 0;
  }
 }

 dp_info.enc_id = 0;
 if (dig->dig_encoder)
  dp_info.enc_id |= ATOM_DP_CONFIG_DIG2_ENCODER;
 else
  dp_info.enc_id |= ATOM_DP_CONFIG_DIG1_ENCODER;
 if (dig->linkb)
  dp_info.enc_id |= ATOM_DP_CONFIG_LINK_B;
 else
  dp_info.enc_id |= ATOM_DP_CONFIG_LINK_A;

 tmp = radeon_read_dpcd_reg(radeon_connector, DP_MAX_LANE_COUNT);
 if (ASIC_IS_DCE5(rdev) && (tmp & DP_TPS3_SUPPORTED))
  dp_info.tp3_supported = 1;
 else
  dp_info.tp3_supported = 0;

 memcpy(dp_info.dpcd, dig_connector->dpcd, DP_RECEIVER_CAP_SIZE);
 dp_info.rdev = rdev;
 dp_info.encoder = encoder;
 dp_info.connector = connector;
 dp_info.radeon_connector = radeon_connector;
 dp_info.dp_lane_count = dig_connector->dp_lane_count;
 dp_info.dp_clock = dig_connector->dp_clock;

 if (radeon_dp_link_train_init(&dp_info))
  goto done;
 if (radeon_dp_link_train_cr(&dp_info))
  goto done;
 if (radeon_dp_link_train_ce(&dp_info))
  goto done;
done:
 if (radeon_dp_link_train_finish(&dp_info))
  return;
}
