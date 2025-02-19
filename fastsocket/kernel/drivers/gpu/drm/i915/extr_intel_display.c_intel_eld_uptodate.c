
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {int* eld; TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 int I915_READ (int) ;
 int I915_WRITE (int,int) ;

__attribute__((used)) static bool intel_eld_uptodate(struct drm_connector *connector,
          int reg_eldv, uint32_t bits_eldv,
          int reg_elda, uint32_t bits_elda,
          int reg_edid)
{
 struct drm_i915_private *dev_priv = connector->dev->dev_private;
 uint8_t *eld = connector->eld;
 uint32_t i;

 i = I915_READ(reg_eldv);
 i &= bits_eldv;

 if (!eld[0])
  return !i;

 if (!i)
  return 0;

 i = I915_READ(reg_elda);
 i &= ~bits_elda;
 I915_WRITE(reg_elda, i);

 for (i = 0; i < eld[2]; i++)
  if (I915_READ(reg_edid) != *((uint32_t *)eld + i))
   return 0;

 return 1;
}
