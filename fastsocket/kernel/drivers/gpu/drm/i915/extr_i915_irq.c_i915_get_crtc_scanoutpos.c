
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef int drm_i915_private_t ;
struct TYPE_2__ {int gen; } ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 int DRM_SCANOUTPOS_ACCURATE ;
 int DRM_SCANOUTPOS_INVBL ;
 int DRM_SCANOUTPOS_VALID ;
 int HTOTAL (int) ;
 int I915_READ (int ) ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int PIPEDSL (int) ;
 int PIPEFRAMEPIXEL (int) ;
 int PIPE_PIXEL_MASK ;
 int PIPE_PIXEL_SHIFT ;
 int VBLANK (int) ;
 int VTOTAL (int) ;
 int i915_pipe_enabled (struct drm_device*,int) ;
 int intel_pipe_to_cpu_transcoder (int *,int) ;
 int pipe_name (int) ;

__attribute__((used)) static int i915_get_crtc_scanoutpos(struct drm_device *dev, int pipe,
        int *vpos, int *hpos)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 u32 vbl = 0, position = 0;
 int vbl_start, vbl_end, htotal, vtotal;
 bool in_vbl = 1;
 int ret = 0;
 enum transcoder cpu_transcoder = intel_pipe_to_cpu_transcoder(dev_priv,
              pipe);

 if (!i915_pipe_enabled(dev, pipe)) {
  DRM_DEBUG_DRIVER("trying to get scanoutpos for disabled "
     "pipe %c\n", pipe_name(pipe));
  return 0;
 }


 vtotal = 1 + ((I915_READ(VTOTAL(cpu_transcoder)) >> 16) & 0x1fff);

 if (INTEL_INFO(dev)->gen >= 4) {



  position = I915_READ(PIPEDSL(pipe));




  *vpos = position & 0x1fff;
  *hpos = 0;
 } else {




  position = (I915_READ(PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;

  htotal = 1 + ((I915_READ(HTOTAL(cpu_transcoder)) >> 16) & 0x1fff);
  *vpos = position / htotal;
  *hpos = position - (*vpos * htotal);
 }


 vbl = I915_READ(VBLANK(cpu_transcoder));


 vbl_start = vbl & 0x1fff;
 vbl_end = (vbl >> 16) & 0x1fff;

 if ((*vpos < vbl_start) || (*vpos > vbl_end))
  in_vbl = 0;


 if (in_vbl && (*vpos >= vbl_start))
  *vpos = *vpos - vtotal;


 if (vbl > 0)
  ret |= DRM_SCANOUTPOS_VALID | DRM_SCANOUTPOS_ACCURATE;


 if (in_vbl)
  ret |= DRM_SCANOUTPOS_INVBL;

 return ret;
}
