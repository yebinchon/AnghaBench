
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_watermark_params {long guard_size; long max_wm; long default_wm; int cacheline_size; } ;


 long DIV_ROUND_UP (long,int ) ;
 int DRM_DEBUG_KMS (char*,long) ;

__attribute__((used)) static unsigned long intel_calculate_wm(unsigned long clock_in_khz,
     const struct intel_watermark_params *wm,
     int fifo_size,
     int pixel_size,
     unsigned long latency_ns)
{
 long entries_required, wm_size;







 entries_required = ((clock_in_khz / 1000) * pixel_size * latency_ns) /
  1000;
 entries_required = DIV_ROUND_UP(entries_required, wm->cacheline_size);

 DRM_DEBUG_KMS("FIFO entries required for mode: %ld\n", entries_required);

 wm_size = fifo_size - (entries_required + wm->guard_size);

 DRM_DEBUG_KMS("FIFO watermark level: %ld\n", wm_size);


 if (wm_size > (long)wm->max_wm)
  wm_size = wm->max_wm;
 if (wm_size <= 0)
  wm_size = wm->default_wm;
 return wm_size;
}
