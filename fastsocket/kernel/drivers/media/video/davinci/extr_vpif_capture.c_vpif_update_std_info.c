
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int storage_mode; int hpitch; } ;
struct vpif_channel_config_params {int stdid; int frm_fmt; int width; int height; } ;
struct vpif_params {TYPE_4__ video_params; struct vpif_channel_config_params std_info; } ;
struct video_obj {int stdid; } ;
struct TYPE_5__ {int bytesperline; int height; int width; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct TYPE_7__ {TYPE_2__ fmt; } ;
struct common_obj {TYPE_3__ fmt; int height; int width; } ;
struct channel_obj {struct video_obj video; struct vpif_params vpifparams; struct common_obj* common; } ;


 int ARRAY_SIZE (struct vpif_channel_config_params*) ;
 int EINVAL ;
 size_t VPIF_VIDEO_INDEX ;
 struct vpif_channel_config_params* ch_params ;
 int debug ;
 int memcpy (struct vpif_channel_config_params*,struct vpif_channel_config_params const*,int) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_update_std_info(struct channel_obj *ch)
{
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 struct vpif_params *vpifparams = &ch->vpifparams;
 const struct vpif_channel_config_params *config;
 struct vpif_channel_config_params *std_info;
 struct video_obj *vid_ch = &ch->video;
 int index;

 vpif_dbg(2, debug, "vpif_update_std_info\n");

 std_info = &vpifparams->std_info;

 for (index = 0; index < ARRAY_SIZE(ch_params); index++) {
  config = &ch_params[index];
  if (config->stdid & vid_ch->stdid) {
   memcpy(std_info, config, sizeof(*config));
   break;
  }
 }


 if (index == ARRAY_SIZE(ch_params))
  return -EINVAL;

 common->fmt.fmt.pix.width = std_info->width;
 common->width = std_info->width;
 common->fmt.fmt.pix.height = std_info->height;
 common->height = std_info->height;
 common->fmt.fmt.pix.bytesperline = std_info->width;
 vpifparams->video_params.hpitch = std_info->width;
 vpifparams->video_params.storage_mode = std_info->frm_fmt;
 return 0;
}
