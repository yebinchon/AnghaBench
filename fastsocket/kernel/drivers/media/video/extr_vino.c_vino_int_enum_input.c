
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vino_channel_settings {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int input_lock; scalar_t__ camera; scalar_t__ decoder; } ;


 int VINO_INPUT_COMPOSITE ;
 int VINO_INPUT_D1 ;
 int VINO_INPUT_NONE ;
 int VINO_INPUT_SVIDEO ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* vino_drvdata ;

__attribute__((used)) static int vino_int_enum_input(struct vino_channel_settings *vcs, __u32 index)
{
 int input = VINO_INPUT_NONE;
 unsigned long flags;

 spin_lock_irqsave(&vino_drvdata->input_lock, flags);
 if (vino_drvdata->decoder && vino_drvdata->camera) {
  switch (index) {
  case 0:
   input = VINO_INPUT_COMPOSITE;
   break;
  case 1:
   input = VINO_INPUT_SVIDEO;
   break;
  case 2:
   input = VINO_INPUT_D1;
   break;
  }
 } else if (vino_drvdata->decoder) {
  switch (index) {
  case 0:
   input = VINO_INPUT_COMPOSITE;
   break;
  case 1:
   input = VINO_INPUT_SVIDEO;
   break;
  }
 } else if (vino_drvdata->camera) {
  switch (index) {
  case 0:
   input = VINO_INPUT_D1;
   break;
  }
 }
 spin_unlock_irqrestore(&vino_drvdata->input_lock, flags);

 return input;
}
