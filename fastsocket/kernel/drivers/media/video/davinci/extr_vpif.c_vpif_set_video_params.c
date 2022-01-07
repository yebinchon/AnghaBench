
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vpif_channel_config_params {int ycmux_mode; } ;
struct vpif_params {struct vpif_channel_config_params std_info; } ;


 int VPIF_EMULATION_CTRL ;
 int VPIF_REQ_SIZE ;
 int config_vpif_params (struct vpif_params*,scalar_t__,int) ;
 int regw (int,int ) ;
 int vpif_set_mode_info (struct vpif_channel_config_params const*,scalar_t__,scalar_t__) ;

int vpif_set_video_params(struct vpif_params *vpifparams, u8 channel_id)
{
 const struct vpif_channel_config_params *config = &vpifparams->std_info;
 int found = 1;

 vpif_set_mode_info(config, channel_id, channel_id);
 if (!config->ycmux_mode) {

  vpif_set_mode_info(config, channel_id + 1, channel_id);
  found = 2;
 }

 config_vpif_params(vpifparams, channel_id, found);

 regw(0x80, VPIF_REQ_SIZE);
 regw(0x01, VPIF_EMULATION_CTRL);

 return found;
}
