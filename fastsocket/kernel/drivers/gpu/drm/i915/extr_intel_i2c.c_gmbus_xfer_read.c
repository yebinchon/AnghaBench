
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_msg {int len; int addr; int * buf; } ;
struct drm_i915_private {int gpio_mmio_base; } ;


 scalar_t__ GMBUS1 ;
 scalar_t__ GMBUS3 ;
 int GMBUS_BYTE_COUNT_SHIFT ;
 int GMBUS_CYCLE_WAIT ;
 int GMBUS_HW_RDY ;
 int GMBUS_HW_RDY_EN ;
 int GMBUS_SLAVE_ADDR_SHIFT ;
 int GMBUS_SLAVE_READ ;
 int GMBUS_SW_RDY ;
 int I915_READ (scalar_t__) ;
 int I915_WRITE (scalar_t__,int) ;
 int gmbus_wait_hw_status (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static int
gmbus_xfer_read(struct drm_i915_private *dev_priv, struct i2c_msg *msg,
  u32 gmbus1_index)
{
 int reg_offset = dev_priv->gpio_mmio_base;
 u16 len = msg->len;
 u8 *buf = msg->buf;

 I915_WRITE(GMBUS1 + reg_offset,
     gmbus1_index |
     GMBUS_CYCLE_WAIT |
     (len << GMBUS_BYTE_COUNT_SHIFT) |
     (msg->addr << GMBUS_SLAVE_ADDR_SHIFT) |
     GMBUS_SLAVE_READ | GMBUS_SW_RDY);
 while (len) {
  int ret;
  u32 val, loop = 0;

  ret = gmbus_wait_hw_status(dev_priv, GMBUS_HW_RDY,
        GMBUS_HW_RDY_EN);
  if (ret)
   return ret;

  val = I915_READ(GMBUS3 + reg_offset);
  do {
   *buf++ = val & 0xff;
   val >>= 8;
  } while (--len && ++loop < 4);
 }

 return 0;
}
