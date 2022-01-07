
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vino_channel_settings {unsigned int data_norm; int input; } ;
struct TYPE_4__ {int std; } ;
struct TYPE_3__ {int input_lock; } ;


 int EINVAL ;
 unsigned int VINO_DATA_NORM_D1 ;
 unsigned int VINO_DATA_NORM_NTSC ;
 unsigned int VINO_DATA_NORM_PAL ;
 unsigned int VINO_DATA_NORM_SECAM ;



 int core ;
 int decoder_call (int ,int ,int ) ;
 int s_std ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* vino_data_norms ;
 TYPE_1__* vino_drvdata ;
 int vino_set_default_clipping (struct vino_channel_settings*) ;
 int vino_set_default_framerate (struct vino_channel_settings*) ;
 int vino_set_default_scaling (struct vino_channel_settings*) ;

__attribute__((used)) static int vino_set_data_norm(struct vino_channel_settings *vcs,
         unsigned int data_norm,
         unsigned long *flags)
{
 int err = 0;

 if (data_norm == vcs->data_norm)
  return 0;

 switch (vcs->input) {
 case 129:

  if (data_norm != VINO_DATA_NORM_D1)
   return -EINVAL;
  break;
 case 130:
 case 128: {
  v4l2_std_id norm;

  if ((data_norm != VINO_DATA_NORM_PAL)
      && (data_norm != VINO_DATA_NORM_NTSC)
      && (data_norm != VINO_DATA_NORM_SECAM))
   return -EINVAL;

  spin_unlock_irqrestore(&vino_drvdata->input_lock, *flags);




  norm = vino_data_norms[data_norm].std;
  err = decoder_call(core, s_std, norm);

  spin_lock_irqsave(&vino_drvdata->input_lock, *flags);

  if (err)
   goto out;

  vcs->data_norm = data_norm;

  vino_set_default_clipping(vcs);
  vino_set_default_scaling(vcs);
  vino_set_default_framerate(vcs);
  break;
 }
 default:
  return -EINVAL;
 }

out:
 return err;
}
