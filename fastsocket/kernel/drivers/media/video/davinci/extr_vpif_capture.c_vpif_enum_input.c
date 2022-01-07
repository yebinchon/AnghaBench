
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpif_fh {struct channel_obj* channel; } ;
struct vpif_capture_config {struct vpif_capture_chan_config* chan_config; } ;
struct vpif_capture_chan_config {size_t input_count; TYPE_1__* inputs; } ;
struct v4l2_input {size_t index; } ;
struct file {int dummy; } ;
struct channel_obj {size_t channel_id; } ;
struct TYPE_4__ {struct vpif_capture_config* platform_data; } ;
struct TYPE_3__ {int input; } ;


 int EINVAL ;
 int debug ;
 int memcpy (struct v4l2_input*,int *,int) ;
 int vpif_dbg (int,int ,char*) ;
 TYPE_2__* vpif_dev ;

__attribute__((used)) static int vpif_enum_input(struct file *file, void *priv,
    struct v4l2_input *input)
{

 struct vpif_capture_config *config = vpif_dev->platform_data;
 struct vpif_capture_chan_config *chan_cfg;
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;

 chan_cfg = &config->chan_config[ch->channel_id];

 if (input->index >= chan_cfg->input_count) {
  vpif_dbg(1, debug, "Invalid input index\n");
  return -EINVAL;
 }

 memcpy(input, &chan_cfg->inputs[input->index].input,
  sizeof(*input));
 return 0;
}
