
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vpif_channel_config_params {int stdid; int width; int height; } ;
struct vpif_params {struct vpif_channel_config_params std_info; } ;
struct video_obj {int stdid; } ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct common_obj {int width; int height; TYPE_3__ fmt; } ;
struct channel_obj {struct common_obj* common; struct vpif_params vpifparams; struct video_obj video; } ;


 int ARRAY_SIZE (struct vpif_channel_config_params*) ;
 size_t VPIF_VIDEO_INDEX ;
 struct vpif_channel_config_params* ch_params ;
 int debug ;
 int memcpy (struct vpif_channel_config_params*,struct vpif_channel_config_params const*,int) ;
 int vpif_dbg (int,int ,char*,int ,int ) ;

__attribute__((used)) static int vpif_get_std_info(struct channel_obj *ch)
{
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 struct video_obj *vid_ch = &ch->video;
 struct vpif_params *vpifparams = &ch->vpifparams;
 struct vpif_channel_config_params *std_info = &vpifparams->std_info;
 const struct vpif_channel_config_params *config;

 int index;

 std_info->stdid = vid_ch->stdid;
 if (!std_info)
  return -1;

 for (index = 0; index < ARRAY_SIZE(ch_params); index++) {
  config = &ch_params[index];
  if (config->stdid & std_info->stdid) {
   memcpy(std_info, config, sizeof(*config));
   break;
  }
 }

 if (index == ARRAY_SIZE(ch_params))
  return -1;

 common->fmt.fmt.pix.width = std_info->width;
 common->fmt.fmt.pix.height = std_info->height;
 vpif_dbg(1, debug, "Pixel details: Width = %d,Height = %d\n",
   common->fmt.fmt.pix.width, common->fmt.fmt.pix.height);


 ch->common[VPIF_VIDEO_INDEX].height = std_info->height;
 ch->common[VPIF_VIDEO_INDEX].width = std_info->width;

 return 0;
}
