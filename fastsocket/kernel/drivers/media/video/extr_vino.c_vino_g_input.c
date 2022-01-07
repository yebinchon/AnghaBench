
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vino_channel_settings {int input; } ;
struct file {int dummy; } ;
typedef unsigned int __u32 ;
struct TYPE_2__ {int input_lock; } ;


 int EINVAL ;
 int VINO_INPUT_NONE ;
 int dprintk (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 TYPE_1__* vino_drvdata ;
 unsigned int vino_find_input_index (struct vino_channel_settings*) ;

__attribute__((used)) static int vino_g_input(struct file *file, void *__fh,
        unsigned int *i)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 __u32 index;
 int input;
 unsigned long flags;

 spin_lock_irqsave(&vino_drvdata->input_lock, flags);
 input = vcs->input;
 index = vino_find_input_index(vcs);
 spin_unlock_irqrestore(&vino_drvdata->input_lock, flags);

 dprintk("input = %d\n", input);

 if (input == VINO_INPUT_NONE) {
  return -EINVAL;
 }

 *i = index;

 return 0;
}
