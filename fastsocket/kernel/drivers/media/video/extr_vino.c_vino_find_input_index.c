
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vino_channel_settings {int input; } ;
typedef int __u32 ;
struct TYPE_2__ {scalar_t__ camera; scalar_t__ decoder; } ;





 TYPE_1__* vino_drvdata ;

__attribute__((used)) static __u32 vino_find_input_index(struct vino_channel_settings *vcs)
{
 __u32 index = 0;


 if (vino_drvdata->decoder && vino_drvdata->camera) {
  switch (vcs->input) {
  case 130:
   index = 0;
   break;
  case 128:
   index = 1;
   break;
  case 129:
   index = 2;
   break;
  }
 } else if (vino_drvdata->decoder) {
  switch (vcs->input) {
  case 130:
   index = 0;
   break;
  case 128:
   index = 1;
   break;
  }
 } else if (vino_drvdata->camera) {
  switch (vcs->input) {
  case 129:
   index = 0;
   break;
  }
 }

 return index;
}
