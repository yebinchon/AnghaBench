
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_delay; int min_delay; int hw_lock; } ;
struct drm_i915_private {TYPE_1__ rps; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 unsigned int GEN6_PCODE_FREQ_IA_RATIO_SHIFT ;
 int GEN6_PCODE_WRITE_MIN_FREQ_TABLE ;
 int WARN_ON (int) ;
 unsigned int cpufreq_quick_get_max (int ) ;
 int mutex_is_locked (int *) ;
 int sandybridge_pcode_write (struct drm_i915_private*,int ,unsigned int) ;
 unsigned int tsc_khz ;

__attribute__((used)) static void gen6_update_ring_freq(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int min_freq = 15;
 int gpu_freq;
 unsigned int ia_freq, max_ia_freq;
 int scaling_factor = 180;

 WARN_ON(!mutex_is_locked(&dev_priv->rps.hw_lock));

 max_ia_freq = cpufreq_quick_get_max(0);




 if (!max_ia_freq)
  max_ia_freq = tsc_khz;


 max_ia_freq /= 1000;






 for (gpu_freq = dev_priv->rps.max_delay; gpu_freq >= dev_priv->rps.min_delay;
      gpu_freq--) {
  int diff = dev_priv->rps.max_delay - gpu_freq;





  if (gpu_freq < min_freq)
   ia_freq = 800;
  else
   ia_freq = max_ia_freq - ((diff * scaling_factor) / 2);
  ia_freq = DIV_ROUND_CLOSEST(ia_freq, 100);
  ia_freq <<= GEN6_PCODE_FREQ_IA_RATIO_SHIFT;

  sandybridge_pcode_write(dev_priv,
     GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
     ia_freq | gpu_freq);
 }
}
