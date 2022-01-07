
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vino_channel_settings {int input; int channel; } ;
struct TYPE_2__ {int camera_owner; int decoder_owner; } ;





 TYPE_1__* vino_drvdata ;

__attribute__((used)) static int vino_is_input_owner(struct vino_channel_settings *vcs)
{
 switch(vcs->input) {
 case 130:
 case 128:
  return vino_drvdata->decoder_owner == vcs->channel;
 case 129:
  return vino_drvdata->camera_owner == vcs->channel;
 default:
  return 0;
 }
}
