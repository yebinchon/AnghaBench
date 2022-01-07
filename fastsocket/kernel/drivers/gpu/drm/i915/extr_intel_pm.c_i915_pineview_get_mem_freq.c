
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int fsb_freq; int mem_freq; int is_ddr3; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int CLKCFG ;




 int CLKCFG_FSB_MASK ;



 int CLKCFG_MEM_MASK ;
 int CSHRDDR3CTL ;
 int CSHRDDR3CTL_DDR3 ;
 int I915_READ (int ) ;

__attribute__((used)) static void i915_pineview_get_mem_freq(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 u32 tmp;

 tmp = I915_READ(CLKCFG);

 switch (tmp & CLKCFG_FSB_MASK) {
 case 133:
  dev_priv->fsb_freq = 533;
  break;
 case 131:
  dev_priv->fsb_freq = 800;
  break;
 case 132:
  dev_priv->fsb_freq = 667;
  break;
 case 134:
  dev_priv->fsb_freq = 400;
  break;
 }

 switch (tmp & CLKCFG_MEM_MASK) {
 case 130:
  dev_priv->mem_freq = 533;
  break;
 case 129:
  dev_priv->mem_freq = 667;
  break;
 case 128:
  dev_priv->mem_freq = 800;
  break;
 }


 tmp = I915_READ(CSHRDDR3CTL);
 dev_priv->is_ddr3 = (tmp & CSHRDDR3CTL_DDR3) ? 1 : 0;
}
