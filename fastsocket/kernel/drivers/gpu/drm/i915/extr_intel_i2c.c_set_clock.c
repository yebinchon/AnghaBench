
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gmbus {int gpio_reg; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;


 int GPIO_CLOCK_DIR_IN ;
 int GPIO_CLOCK_DIR_MASK ;
 int GPIO_CLOCK_DIR_OUT ;
 int GPIO_CLOCK_VAL_MASK ;
 int I915_WRITE_NOTRACE (int ,int) ;
 int POSTING_READ (int ) ;
 int get_reserved (struct intel_gmbus*) ;

__attribute__((used)) static void set_clock(void *data, int state_high)
{
 struct intel_gmbus *bus = data;
 struct drm_i915_private *dev_priv = bus->dev_priv;
 u32 reserved = get_reserved(bus);
 u32 clock_bits;

 if (state_high)
  clock_bits = GPIO_CLOCK_DIR_IN | GPIO_CLOCK_DIR_MASK;
 else
  clock_bits = GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_DIR_MASK |
   GPIO_CLOCK_VAL_MASK;

 I915_WRITE_NOTRACE(bus->gpio_reg, reserved | clock_bits);
 POSTING_READ(bus->gpio_reg);
}
