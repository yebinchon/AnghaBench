
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int audio_enabled; } ;


 int r600_audio_engine_enable (struct radeon_device*,int) ;

void r600_audio_fini(struct radeon_device *rdev)
{
 if (!rdev->audio_enabled)
  return;

 r600_audio_engine_enable(rdev, 0);
}
