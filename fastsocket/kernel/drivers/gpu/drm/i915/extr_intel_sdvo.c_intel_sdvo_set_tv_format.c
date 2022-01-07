
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct intel_sdvo_tv_format {int dummy; } ;
struct intel_sdvo {int tv_format_index; } ;
typedef int format_map ;
typedef int format ;


 int BUILD_BUG_ON (int) ;
 int SDVO_CMD_SET_TV_FORMAT ;
 int intel_sdvo_set_value (struct intel_sdvo*,int ,struct intel_sdvo_tv_format*,int) ;
 int memcpy (struct intel_sdvo_tv_format*,int*,int ) ;
 int memset (struct intel_sdvo_tv_format*,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static bool intel_sdvo_set_tv_format(struct intel_sdvo *intel_sdvo)
{
 struct intel_sdvo_tv_format format;
 uint32_t format_map;

 format_map = 1 << intel_sdvo->tv_format_index;
 memset(&format, 0, sizeof(format));
 memcpy(&format, &format_map, min(sizeof(format), sizeof(format_map)));

 BUILD_BUG_ON(sizeof(format) != 6);
 return intel_sdvo_set_value(intel_sdvo,
        SDVO_CMD_SET_TV_FORMAT,
        &format, sizeof(format));
}
