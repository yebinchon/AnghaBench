
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int threshold; int gain; int attack_time; int enabled; int release_time; } ;
struct TYPE_7__ {int deviation; int enabled; int release_time; } ;
struct TYPE_6__ {int frequency; int deviation; int enabled; } ;
struct TYPE_5__ {int pi; int deviation; int pty; } ;
struct si4713_device {int preemphasis; TYPE_4__ acomp_info; TYPE_3__ limiter_info; TYPE_2__ pilot_info; TYPE_1__ rds_info; } ;
typedef int s32 ;


 int ARRAY_SIZE (unsigned long*) ;
 int ATTACK_TIME_UNIT ;
 int EINVAL ;
 int SI4713_TX_ACOMP_ATTACK_TIME ;
 int SI4713_TX_ACOMP_ENABLE ;
 int SI4713_TX_ACOMP_GAIN ;
 int SI4713_TX_ACOMP_RELEASE_TIME ;
 int SI4713_TX_ACOMP_THRESHOLD ;
 int SI4713_TX_AUDIO_DEVIATION ;
 int SI4713_TX_COMPONENT_ENABLE ;
 int SI4713_TX_LIMITER_RELEASE_TIME ;
 int SI4713_TX_PILOT_DEVIATION ;
 int SI4713_TX_PILOT_FREQUENCY ;
 int SI4713_TX_PREEMPHASIS ;
 int SI4713_TX_RDS_DEVIATION ;
 int SI4713_TX_RDS_PI ;
 int SI4713_TX_RDS_PS_MISC ;
 unsigned long* acomp_rtimes ;
 unsigned long* limiter_times ;
 unsigned long* preemphasis_values ;

__attribute__((used)) static int si4713_choose_econtrol_action(struct si4713_device *sdev, u32 id,
  u32 **shadow, s32 *bit, s32 *mask, u16 *property, int *mul,
  unsigned long **table, int *size)
{
 s32 rval = 0;

 switch (id) {

 case 130:
  *property = SI4713_TX_RDS_PI;
  *mul = 1;
  *shadow = &sdev->rds_info.pi;
  break;
 case 138:
  *property = SI4713_TX_ACOMP_THRESHOLD;
  *mul = 1;
  *shadow = &sdev->acomp_info.threshold;
  break;
 case 140:
  *property = SI4713_TX_ACOMP_GAIN;
  *mul = 1;
  *shadow = &sdev->acomp_info.gain;
  break;
 case 132:
  *property = SI4713_TX_PILOT_FREQUENCY;
  *mul = 1;
  *shadow = &sdev->pilot_info.frequency;
  break;
 case 142:
  *property = SI4713_TX_ACOMP_ATTACK_TIME;
  *mul = ATTACK_TIME_UNIT;
  *shadow = &sdev->acomp_info.attack_time;
  break;
 case 134:
  *property = SI4713_TX_PILOT_DEVIATION;
  *mul = 10;
  *shadow = &sdev->pilot_info.deviation;
  break;
 case 137:
  *property = SI4713_TX_AUDIO_DEVIATION;
  *mul = 10;
  *shadow = &sdev->limiter_info.deviation;
  break;
 case 131:
  *property = SI4713_TX_RDS_DEVIATION;
  *mul = 1;
  *shadow = &sdev->rds_info.deviation;
  break;

 case 129:
  *property = SI4713_TX_RDS_PS_MISC;
  *bit = 5;
  *mask = 0x1F << 5;
  *shadow = &sdev->rds_info.pty;
  break;
 case 136:
  *property = SI4713_TX_ACOMP_ENABLE;
  *bit = 1;
  *mask = 1 << 1;
  *shadow = &sdev->limiter_info.enabled;
  break;
 case 141:
  *property = SI4713_TX_ACOMP_ENABLE;
  *bit = 0;
  *mask = 1 << 0;
  *shadow = &sdev->acomp_info.enabled;
  break;
 case 133:
  *property = SI4713_TX_COMPONENT_ENABLE;
  *bit = 0;
  *mask = 1 << 0;
  *shadow = &sdev->pilot_info.enabled;
  break;

 case 135:
  *property = SI4713_TX_LIMITER_RELEASE_TIME;
  *table = limiter_times;
  *size = ARRAY_SIZE(limiter_times);
  *shadow = &sdev->limiter_info.release_time;
  break;
 case 139:
  *property = SI4713_TX_ACOMP_RELEASE_TIME;
  *table = acomp_rtimes;
  *size = ARRAY_SIZE(acomp_rtimes);
  *shadow = &sdev->acomp_info.release_time;
  break;
 case 128:
  *property = SI4713_TX_PREEMPHASIS;
  *table = preemphasis_values;
  *size = ARRAY_SIZE(preemphasis_values);
  *shadow = &sdev->preemphasis;
  break;

 default:
  rval = -EINVAL;
 };

 return rval;
}
