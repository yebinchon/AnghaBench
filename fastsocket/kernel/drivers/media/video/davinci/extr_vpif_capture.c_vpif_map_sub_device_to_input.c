
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpif_subdev_info {int name; } ;
struct vpif_capture_config {int subdev_count; struct vpif_subdev_info* subdev_info; struct vpif_capture_chan_config* chan_config; } ;
struct vpif_capture_chan_config {int input_count; TYPE_1__* inputs; } ;
struct channel_obj {size_t channel_id; } ;
struct TYPE_4__ {int ** sd; } ;
struct TYPE_3__ {char* subdev_name; } ;


 int debug ;
 int strcmp (int ,char const*) ;
 int vpif_dbg (int,int ,char*) ;
 TYPE_2__ vpif_obj ;

__attribute__((used)) static struct vpif_subdev_info *vpif_map_sub_device_to_input(
    struct channel_obj *ch,
    struct vpif_capture_config *vpif_cfg,
    int input_index,
    int *sub_device_index)
{
 struct vpif_capture_chan_config *chan_cfg;
 struct vpif_subdev_info *subdev_info = ((void*)0);
 const char *subdev_name = ((void*)0);
 int i;

 vpif_dbg(2, debug, "vpif_map_sub_device_to_input\n");

 chan_cfg = &vpif_cfg->chan_config[ch->channel_id];





 for (i = 0; i < chan_cfg->input_count; i++) {

  if (i == input_index) {
   subdev_name = chan_cfg->inputs[i].subdev_name;
   break;
  }
 }


 if (i == chan_cfg->input_count || (((void*)0) == subdev_name))
  return subdev_info;


 for (i = 0; i < vpif_cfg->subdev_count; i++) {
  subdev_info = &vpif_cfg->subdev_info[i];
  if (!strcmp(subdev_info->name, subdev_name))
   break;
 }

 if (i == vpif_cfg->subdev_count)
  return subdev_info;


 if (((void*)0) == vpif_obj.sd[i])
  return ((void*)0);

 *sub_device_index = i;
 return subdev_info;
}
