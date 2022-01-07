
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_display_config {size_t output_count; int * output; } ;
struct v4l2_output {size_t index; int std; int type; int name; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct vpif_display_config* platform_data; } ;


 int DM646X_V4L2_STD ;
 int EINVAL ;
 int V4L2_OUTPUT_TYPE_ANALOG ;
 int debug ;
 int strcpy (int ,int ) ;
 int vpif_dbg (int,int ,char*) ;
 TYPE_1__* vpif_dev ;

__attribute__((used)) static int vpif_enum_output(struct file *file, void *fh,
    struct v4l2_output *output)
{

 struct vpif_display_config *config = vpif_dev->platform_data;

 if (output->index >= config->output_count) {
  vpif_dbg(1, debug, "Invalid output index\n");
  return -EINVAL;
 }

 strcpy(output->name, config->output[output->index]);
 output->type = V4L2_OUTPUT_TYPE_ANALOG;
 output->std = DM646X_V4L2_STD;

 return 0;
}
