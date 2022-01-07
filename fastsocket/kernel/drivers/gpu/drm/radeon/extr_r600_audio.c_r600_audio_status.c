
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dev; } ;
struct r600_audio {int channels; int bits_per_sample; int rate; int status_bits; int category_code; } ;


 int R600_AUDIO_RATE_BPS_CHANNEL ;
 int R600_AUDIO_STATUS_BITS ;
 int RREG32 (int ) ;
 int dev_err (int ,char*,int) ;

struct r600_audio r600_audio_status(struct radeon_device *rdev)
{
 struct r600_audio status;
 uint32_t value;

 value = RREG32(R600_AUDIO_RATE_BPS_CHANNEL);


 status.channels = (value & 0x7) + 1;


 switch ((value & 0xF0) >> 4) {
 case 0x0:
  status.bits_per_sample = 8;
  break;
 case 0x1:
  status.bits_per_sample = 16;
  break;
 case 0x2:
  status.bits_per_sample = 20;
  break;
 case 0x3:
  status.bits_per_sample = 24;
  break;
 case 0x4:
  status.bits_per_sample = 32;
  break;
 default:
  dev_err(rdev->dev, "Unknown bits per sample 0x%x, using 16\n",
   (int)value);
  status.bits_per_sample = 16;
 }


 if (value & 0x4000)
  status.rate = 44100;
 else
  status.rate = 48000;
 status.rate *= ((value >> 11) & 0x7) + 1;
 status.rate /= ((value >> 8) & 0x7) + 1;

 value = RREG32(R600_AUDIO_STATUS_BITS);


 status.status_bits = value & 0xff;


 status.category_code = (value >> 8) & 0xff;

 return status;
}
