
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int calculation_running; scalar_t__ channel_at_start; int nr_samples; scalar_t__** samples; } ;
struct TYPE_3__ {int link_noise; } ;
struct b43legacy_phy {scalar_t__ channel; scalar_t__* nrssi_lt; } ;
struct b43legacy_wldev {TYPE_2__ noisecalc; TYPE_1__ stats; struct b43legacy_phy phy; } ;
typedef int s32 ;
typedef int __le32 ;


 scalar_t__ ARRAY_SIZE (scalar_t__*) ;
 int B43legacy_SHM_SHARED ;
 int B43legacy_WARN_ON (int) ;
 int b43legacy_generate_noise_sample (struct b43legacy_wldev*) ;
 int b43legacy_jssi_read (struct b43legacy_wldev*) ;
 int b43legacy_shm_read16 (struct b43legacy_wldev*,int ,int) ;
 int clamp_val (int,int ,scalar_t__) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void handle_irq_noise(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;
 u16 tmp;
 u8 noise[4];
 u8 i;
 u8 j;
 s32 average;



 B43legacy_WARN_ON(!dev->noisecalc.calculation_running);
 if (dev->noisecalc.channel_at_start != phy->channel)
  goto drop_calculation;
 *((__le32 *)noise) = cpu_to_le32(b43legacy_jssi_read(dev));
 if (noise[0] == 0x7F || noise[1] == 0x7F ||
     noise[2] == 0x7F || noise[3] == 0x7F)
  goto generate_new;


 B43legacy_WARN_ON(dev->noisecalc.nr_samples >= 8);
 i = dev->noisecalc.nr_samples;
 noise[0] = clamp_val(noise[0], 0, ARRAY_SIZE(phy->nrssi_lt) - 1);
 noise[1] = clamp_val(noise[1], 0, ARRAY_SIZE(phy->nrssi_lt) - 1);
 noise[2] = clamp_val(noise[2], 0, ARRAY_SIZE(phy->nrssi_lt) - 1);
 noise[3] = clamp_val(noise[3], 0, ARRAY_SIZE(phy->nrssi_lt) - 1);
 dev->noisecalc.samples[i][0] = phy->nrssi_lt[noise[0]];
 dev->noisecalc.samples[i][1] = phy->nrssi_lt[noise[1]];
 dev->noisecalc.samples[i][2] = phy->nrssi_lt[noise[2]];
 dev->noisecalc.samples[i][3] = phy->nrssi_lt[noise[3]];
 dev->noisecalc.nr_samples++;
 if (dev->noisecalc.nr_samples == 8) {

  average = 0;
  for (i = 0; i < 8; i++) {
   for (j = 0; j < 4; j++)
    average += dev->noisecalc.samples[i][j];
  }
  average /= (8 * 4);
  average *= 125;
  average += 64;
  average /= 128;
  tmp = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
          0x40C);
  tmp = (tmp / 128) & 0x1F;
  if (tmp >= 8)
   average += 2;
  else
   average -= 25;
  if (tmp == 8)
   average -= 72;
  else
   average -= 48;

  dev->stats.link_noise = average;
drop_calculation:
  dev->noisecalc.calculation_running = 0;
  return;
 }
generate_new:
 b43legacy_generate_noise_sample(dev);
}
