
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channels; int rate; int bits_per_sample; scalar_t__ category_code; scalar_t__ status_bits; } ;
struct radeon_device {TYPE_1__ audio_status; } ;


 int r600_audio_chipset_supported (struct radeon_device*) ;
 int r600_audio_engine_enable (struct radeon_device*,int) ;
 int radeon_audio ;

int r600_audio_init(struct radeon_device *rdev)
{
 if (!radeon_audio || !r600_audio_chipset_supported(rdev))
  return 0;

 r600_audio_engine_enable(rdev, 1);

 rdev->audio_status.channels = -1;
 rdev->audio_status.rate = -1;
 rdev->audio_status.bits_per_sample = -1;
 rdev->audio_status.status_bits = 0;
 rdev->audio_status.category_code = 0;

 return 0;
}
