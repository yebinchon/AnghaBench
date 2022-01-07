
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct intel_sdvo_enhancements_reply {scalar_t__ dot_crawl; scalar_t__ overscan_v; scalar_t__ overscan_h; } ;
struct drm_connector {int base; } ;
struct TYPE_6__ {struct drm_connector base; } ;
struct intel_sdvo_connector {int max_hscan; int left_margin; int right_margin; int max_vscan; int top_margin; int bottom_margin; int max_dot_crawl; int cur_dot_crawl; void* dot_crawl; void* bottom; void* top; void* right; void* left; TYPE_3__ base; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_sdvo {TYPE_2__ base; } ;
struct drm_device {int dummy; } ;


 int BRIGHTNESS ;
 int CONTRAST ;
 int DRM_DEBUG_KMS (char*,int,...) ;
 int ENHANCEMENT (int ,int ) ;
 int FLICKER_FILTER ;
 int FLICKER_FILTER_2D ;
 int FLICKER_FILTER_ADAPTIVE ;
 int HPOS ;
 int HUE ;
 int SATURATION ;
 int SDVO_CMD_GET_DOT_CRAWL ;
 int SDVO_CMD_GET_MAX_OVERSCAN_H ;
 int SDVO_CMD_GET_MAX_OVERSCAN_V ;
 int SDVO_CMD_GET_OVERSCAN_H ;
 int SDVO_CMD_GET_OVERSCAN_V ;
 int SHARPNESS ;
 int TV_CHROMA_FILTER ;
 int TV_LUMA_FILTER ;
 int VPOS ;
 int brightness ;
 int contrast ;
 int drm_object_attach_property (int *,void*,int) ;
 void* drm_property_create_range (struct drm_device*,int ,char*,int ,int) ;
 int flicker_filter ;
 int flicker_filter_2d ;
 int flicker_filter_adaptive ;
 int hpos ;
 int hue ;
 int intel_sdvo_get_value (struct intel_sdvo*,int ,...) ;
 int saturation ;
 int sharpness ;
 int tv_chroma_filter ;
 int tv_luma_filter ;
 int vpos ;

__attribute__((used)) static bool
intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
          struct intel_sdvo_connector *intel_sdvo_connector,
          struct intel_sdvo_enhancements_reply enhancements)
{
 struct drm_device *dev = intel_sdvo->base.base.dev;
 struct drm_connector *connector = &intel_sdvo_connector->base.base;
 uint16_t response, data_value[2];


 if (enhancements.overscan_h) {
  if (!intel_sdvo_get_value(intel_sdvo,
       SDVO_CMD_GET_MAX_OVERSCAN_H,
       &data_value, 4))
   return 0;

  if (!intel_sdvo_get_value(intel_sdvo,
       SDVO_CMD_GET_OVERSCAN_H,
       &response, 2))
   return 0;

  intel_sdvo_connector->max_hscan = data_value[0];
  intel_sdvo_connector->left_margin = data_value[0] - response;
  intel_sdvo_connector->right_margin = intel_sdvo_connector->left_margin;
  intel_sdvo_connector->left =
   drm_property_create_range(dev, 0, "left_margin", 0, data_value[0]);
  if (!intel_sdvo_connector->left)
   return 0;

  drm_object_attach_property(&connector->base,
           intel_sdvo_connector->left,
           intel_sdvo_connector->left_margin);

  intel_sdvo_connector->right =
   drm_property_create_range(dev, 0, "right_margin", 0, data_value[0]);
  if (!intel_sdvo_connector->right)
   return 0;

  drm_object_attach_property(&connector->base,
           intel_sdvo_connector->right,
           intel_sdvo_connector->right_margin);
  DRM_DEBUG_KMS("h_overscan: max %d, "
         "default %d, current %d\n",
         data_value[0], data_value[1], response);
 }

 if (enhancements.overscan_v) {
  if (!intel_sdvo_get_value(intel_sdvo,
       SDVO_CMD_GET_MAX_OVERSCAN_V,
       &data_value, 4))
   return 0;

  if (!intel_sdvo_get_value(intel_sdvo,
       SDVO_CMD_GET_OVERSCAN_V,
       &response, 2))
   return 0;

  intel_sdvo_connector->max_vscan = data_value[0];
  intel_sdvo_connector->top_margin = data_value[0] - response;
  intel_sdvo_connector->bottom_margin = intel_sdvo_connector->top_margin;
  intel_sdvo_connector->top =
   drm_property_create_range(dev, 0,
         "top_margin", 0, data_value[0]);
  if (!intel_sdvo_connector->top)
   return 0;

  drm_object_attach_property(&connector->base,
           intel_sdvo_connector->top,
           intel_sdvo_connector->top_margin);

  intel_sdvo_connector->bottom =
   drm_property_create_range(dev, 0,
         "bottom_margin", 0, data_value[0]);
  if (!intel_sdvo_connector->bottom)
   return 0;

  drm_object_attach_property(&connector->base,
           intel_sdvo_connector->bottom,
           intel_sdvo_connector->bottom_margin);
  DRM_DEBUG_KMS("v_overscan: max %d, "
         "default %d, current %d\n",
         data_value[0], data_value[1], response);
 }

 ENHANCEMENT(hpos, HPOS);
 ENHANCEMENT(vpos, VPOS);
 ENHANCEMENT(saturation, SATURATION);
 ENHANCEMENT(contrast, CONTRAST);
 ENHANCEMENT(hue, HUE);
 ENHANCEMENT(sharpness, SHARPNESS);
 ENHANCEMENT(brightness, BRIGHTNESS);
 ENHANCEMENT(flicker_filter, FLICKER_FILTER);
 ENHANCEMENT(flicker_filter_adaptive, FLICKER_FILTER_ADAPTIVE);
 ENHANCEMENT(flicker_filter_2d, FLICKER_FILTER_2D);
 ENHANCEMENT(tv_chroma_filter, TV_CHROMA_FILTER);
 ENHANCEMENT(tv_luma_filter, TV_LUMA_FILTER);

 if (enhancements.dot_crawl) {
  if (!intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_DOT_CRAWL, &response, 2))
   return 0;

  intel_sdvo_connector->max_dot_crawl = 1;
  intel_sdvo_connector->cur_dot_crawl = response & 0x1;
  intel_sdvo_connector->dot_crawl =
   drm_property_create_range(dev, 0, "dot_crawl", 0, 1);
  if (!intel_sdvo_connector->dot_crawl)
   return 0;

  drm_object_attach_property(&connector->base,
           intel_sdvo_connector->dot_crawl,
           intel_sdvo_connector->cur_dot_crawl);
  DRM_DEBUG_KMS("dot crawl: current %d\n", response);
 }

 return 1;
}
