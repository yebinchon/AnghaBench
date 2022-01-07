
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meye_params {int subsample; int quality; int sharpness; int agc; int picture; int framerate; } ;
struct TYPE_2__ {int lock; struct meye_params params; } ;


 int EINVAL ;
 int SONY_PIC_COMMAND_SETCAMERAAGC ;
 int SONY_PIC_COMMAND_SETCAMERAPICTURE ;
 int SONY_PIC_COMMAND_SETCAMERASHARPNESS ;
 int mchip_hic_stop () ;
 TYPE_1__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sony_pic_camera_command (int ,int) ;

__attribute__((used)) static int meyeioc_s_params(struct meye_params *jp)
{
 if (jp->subsample > 1)
  return -EINVAL;

 if (jp->quality > 10)
  return -EINVAL;

 if (jp->sharpness > 63 || jp->agc > 63 || jp->picture > 63)
  return -EINVAL;

 if (jp->framerate > 31)
  return -EINVAL;

 mutex_lock(&meye.lock);

 if (meye.params.subsample != jp->subsample ||
     meye.params.quality != jp->quality)
  mchip_hic_stop();

 meye.params = *jp;
 sony_pic_camera_command(SONY_PIC_COMMAND_SETCAMERASHARPNESS,
         meye.params.sharpness);
 sony_pic_camera_command(SONY_PIC_COMMAND_SETCAMERAAGC,
         meye.params.agc);
 sony_pic_camera_command(SONY_PIC_COMMAND_SETCAMERAPICTURE,
         meye.params.picture);
 mutex_unlock(&meye.lock);

 return 0;
}
