
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_sdvo_tv_format {int dummy; } ;
struct TYPE_7__ {int base; } ;
struct TYPE_8__ {TYPE_3__ base; } ;
struct intel_sdvo_connector {int format_supported_num; int* tv_format_supported; int tv_format; TYPE_4__ base; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct intel_sdvo {size_t tv_format_index; TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
typedef int format_map ;
typedef int format ;


 int BUILD_BUG_ON (int) ;
 int DRM_MODE_PROP_ENUM ;
 int SDVO_CMD_GET_SUPPORTED_TV_FORMATS ;
 int TV_FORMAT_NUM ;
 int drm_object_attach_property (int *,int ,int ) ;
 int drm_property_add_enum (int ,int,int,int ) ;
 int drm_property_create (struct drm_device*,int ,char*,int) ;
 int intel_sdvo_get_value (struct intel_sdvo*,int ,struct intel_sdvo_tv_format*,int) ;
 int intel_sdvo_set_target_output (struct intel_sdvo*,int) ;
 int memcpy (int*,struct intel_sdvo_tv_format*,int ) ;
 int min (int,int) ;
 int * tv_format_names ;

__attribute__((used)) static bool intel_sdvo_tv_create_property(struct intel_sdvo *intel_sdvo,
       struct intel_sdvo_connector *intel_sdvo_connector,
       int type)
{
 struct drm_device *dev = intel_sdvo->base.base.dev;
 struct intel_sdvo_tv_format format;
 uint32_t format_map, i;

 if (!intel_sdvo_set_target_output(intel_sdvo, type))
  return 0;

 BUILD_BUG_ON(sizeof(format) != 6);
 if (!intel_sdvo_get_value(intel_sdvo,
      SDVO_CMD_GET_SUPPORTED_TV_FORMATS,
      &format, sizeof(format)))
  return 0;

 memcpy(&format_map, &format, min(sizeof(format_map), sizeof(format)));

 if (format_map == 0)
  return 0;

 intel_sdvo_connector->format_supported_num = 0;
 for (i = 0 ; i < TV_FORMAT_NUM; i++)
  if (format_map & (1 << i))
   intel_sdvo_connector->tv_format_supported[intel_sdvo_connector->format_supported_num++] = i;


 intel_sdvo_connector->tv_format =
   drm_property_create(dev, DRM_MODE_PROP_ENUM,
         "mode", intel_sdvo_connector->format_supported_num);
 if (!intel_sdvo_connector->tv_format)
  return 0;

 for (i = 0; i < intel_sdvo_connector->format_supported_num; i++)
  drm_property_add_enum(
    intel_sdvo_connector->tv_format, i,
    i, tv_format_names[intel_sdvo_connector->tv_format_supported[i]]);

 intel_sdvo->tv_format_index = intel_sdvo_connector->tv_format_supported[0];
 drm_object_attach_property(&intel_sdvo_connector->base.base.base,
          intel_sdvo_connector->tv_format, 0);
 return 1;

}
