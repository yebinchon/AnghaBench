
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int enabled; int gain; int threshold; int attack_time; int release_time; } ;
struct TYPE_7__ {int enabled; int frequency; int deviation; } ;
struct TYPE_6__ {int enabled; int deviation; int release_time; } ;
struct TYPE_5__ {int enabled; int radio_text; int ps_name; int deviation; int pty; int pi; } ;
struct si4713_device {int stereo; int mutex; int tune_rnl; scalar_t__ antenna_capacitor; int power_level; int mute; int preemphasis; int frequency; TYPE_4__ acomp_info; TYPE_3__ pilot_info; TYPE_2__ limiter_info; TYPE_1__ rds_info; } ;


 int DEFAULT_ACOMP_ATIME ;
 int DEFAULT_ACOMP_GAIN ;
 int DEFAULT_ACOMP_RTIME ;
 int DEFAULT_ACOMP_THRESHOLD ;
 int DEFAULT_FREQUENCY ;
 int DEFAULT_LIMITER_DEV ;
 int DEFAULT_LIMITER_RTIME ;
 int DEFAULT_MUTE ;
 int DEFAULT_PILOT_DEVIATION ;
 int DEFAULT_PILOT_FREQUENCY ;
 int DEFAULT_POWER_LEVEL ;
 int DEFAULT_PREEMPHASIS ;
 int DEFAULT_RDS_DEVIATION ;
 int DEFAULT_RDS_PI ;
 int DEFAULT_RDS_PS_NAME ;
 int DEFAULT_RDS_PTY ;
 int DEFAULT_RDS_RADIO_TEXT ;
 int DEFAULT_TUNE_RNL ;
 int MAX_RDS_PS_NAME ;
 int MAX_RDS_RADIO_TEXT ;
 int POWER_OFF ;
 int POWER_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si4713_checkrev (struct si4713_device*) ;
 int si4713_set_power_state (struct si4713_device*,int ) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int si4713_initialize(struct si4713_device *sdev)
{
 int rval;

 rval = si4713_set_power_state(sdev, POWER_ON);
 if (rval < 0)
  goto exit;

 rval = si4713_checkrev(sdev);
 if (rval < 0)
  goto exit;

 rval = si4713_set_power_state(sdev, POWER_OFF);
 if (rval < 0)
  goto exit;

 mutex_lock(&sdev->mutex);

 sdev->rds_info.pi = DEFAULT_RDS_PI;
 sdev->rds_info.pty = DEFAULT_RDS_PTY;
 sdev->rds_info.deviation = DEFAULT_RDS_DEVIATION;
 strlcpy(sdev->rds_info.ps_name, DEFAULT_RDS_PS_NAME, MAX_RDS_PS_NAME);
 strlcpy(sdev->rds_info.radio_text, DEFAULT_RDS_RADIO_TEXT,
       MAX_RDS_RADIO_TEXT);
 sdev->rds_info.enabled = 1;

 sdev->limiter_info.release_time = DEFAULT_LIMITER_RTIME;
 sdev->limiter_info.deviation = DEFAULT_LIMITER_DEV;
 sdev->limiter_info.enabled = 1;

 sdev->pilot_info.deviation = DEFAULT_PILOT_DEVIATION;
 sdev->pilot_info.frequency = DEFAULT_PILOT_FREQUENCY;
 sdev->pilot_info.enabled = 1;

 sdev->acomp_info.release_time = DEFAULT_ACOMP_RTIME;
 sdev->acomp_info.attack_time = DEFAULT_ACOMP_ATIME;
 sdev->acomp_info.threshold = DEFAULT_ACOMP_THRESHOLD;
 sdev->acomp_info.gain = DEFAULT_ACOMP_GAIN;
 sdev->acomp_info.enabled = 1;

 sdev->frequency = DEFAULT_FREQUENCY;
 sdev->preemphasis = DEFAULT_PREEMPHASIS;
 sdev->mute = DEFAULT_MUTE;
 sdev->power_level = DEFAULT_POWER_LEVEL;
 sdev->antenna_capacitor = 0;
 sdev->stereo = 1;
 sdev->tune_rnl = DEFAULT_TUNE_RNL;

 mutex_unlock(&sdev->mutex);

exit:
 return rval;
}
